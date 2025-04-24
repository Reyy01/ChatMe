import 'package:chat_me_mobile/core/logic/server_exception.dart';
import 'package:chat_me_mobile/features/chat/data/dto/Chat.dto.dart';
import 'package:chat_me_mobile/features/chat/data/dto/Message.dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ChatRemoteDatasource {
  Stream<List<ChatDto>> getChats(String? uid);
  Stream<List<MessageDto>> getMessages(String chatId);
  Future<String?> sendMessage(
    String? chatId,
    String? messagesId,
    String? user1,
    String? user2,
    MessageDto messageDto,
  );
  Future<Unit> deleteMessage(
    String? chatId,
  );
  Future<String?> isExistingChat(String? uid1, String? uid2);
}

@LazySingleton(as: ChatRemoteDatasource)
class ChatRemoteDatasourceImpl implements ChatRemoteDatasource {
  ChatRemoteDatasourceImpl({
    required this.firebaseFirestore,
  });

  final FirebaseFirestore firebaseFirestore;

  @override
  Stream<List<ChatDto>> getChats(String? uid) {
    return firebaseFirestore
        .collection('chats')
        .where(
          'participants',
          arrayContainsAny: <String>[uid ?? ''],
        )
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> querySnapshot) {
          if (querySnapshot.docs.isEmpty) {
            print('No chats found, returning empty list');
            return <ChatDto>[];
          }

          return querySnapshot.docs
              .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) =>
                  ChatDto.fromJson(doc.data()))
              .toList();
        });
  }

  @override
  Stream<List<MessageDto>> getMessages(String chatId) {
    return firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .snapshots()
        .map((DocumentSnapshot<Map<String, dynamic>> snapshot) {
      if (!snapshot.exists || snapshot.data() == null) {
        return <MessageDto>[];
      }

      final Map<String, dynamic>? data = snapshot.data();
      final List<dynamic>? messagesData = data?['messages'];

      if (messagesData == null) {
        return <MessageDto>[];
      }

      return messagesData
          .map((dynamic message) => MessageDto.fromJson(message))
          .toList()
          .reversed
          .toList();
    });
  }

  @override
  Future<String?> sendMessage(
    String? chatId,
    String? messagesId,
    String? uid1,
    String? uid2,
    MessageDto messageDto,
  ) async {
    try {
      final DocumentReference<Map<String, dynamic>> chatRef =
          firebaseFirestore.collection('chats').doc(chatId);
      final DocumentSnapshot<Map<String, dynamic>> chatDoc =
          await chatRef.get();

      if (!chatDoc.exists) {
        final String newChatId = chatRef.id;
        chatId = newChatId;

        final ChatDto newChat = ChatDto(
          id: newChatId,
          participants: <String>[uid1 ?? '', uid2 ?? ''],
          messages: <MessageDto>[],
        );

        await chatRef.set(newChat.toPersistence());
      }
      await chatRef.update(<Object, Object?>{
        'messages': FieldValue.arrayUnion(<dynamic>[messageDto.toPersistence()])
      });
      return chatId;
    } catch (e, stackTrace) {
      print('Error sending message: $e');
      throw ServerException(stackTrace.toString());
    }
  }

  @override
  Future<Unit> deleteMessage(String? chatId) async {
    try {
      await firebaseFirestore.collection('chats').doc(chatId).delete();
      return unit;
    } catch (e, stackTrace) {
      print('Error deleting message: $e');
      throw ServerException(stackTrace.toString());
    }
  }

  @override
  Future<String?> isExistingChat(String? uid1, String? uid2) async {
    try {
      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await firebaseFirestore.collection('chats').where('participants',
              isGreaterThanOrEqualTo: <String>[uid1 ?? '', uid2 ?? '']).get();

      if (querySnapshot.docs.isEmpty) {
        return null;
      }

      return querySnapshot.docs.first.id;
    } catch (e, stackTrace) {
      print('Error checking if chat exists: $e');
      throw ServerException(stackTrace.toString());
    }
  }
}
