import 'package:chat_me_mobile/core/logic/server_exception.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/User.dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class UserRemoteDatasource {
  Stream<List<UserDto>> getUsers();
  Future<List<UserDto>> searchUser(String query);
}

@LazySingleton(as: UserRemoteDatasource)
class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  UserRemoteDatasourceImpl({
    required this.firebaseFirestore,
  });

  final FirebaseFirestore firebaseFirestore;

  @override
  Stream<List<UserDto>> getUsers() {
    try {
      return firebaseFirestore
          .collection('users')
          .snapshots()
          .map((QuerySnapshot<Map<String, dynamic>> querySnapshot) {
        if (querySnapshot.docs.isEmpty) {
          print('No users found, returning empty list');
          return <UserDto>[]; // Return empty list if no users exist
        }

        return querySnapshot.docs
            .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) =>
                UserDto.fromJson(doc.data()))
            .toList();
      });
    } catch (e, s) {
      if (e is FirebaseException) {
        throw ServerException(e.message!);
      } else {
        throw ServerException(s.toString());
      }
    }
  }

  @override
  Future<List<UserDto>> searchUser(String query) async {
    try {
      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await firebaseFirestore
              .collection('users')
              .where('name', isGreaterThanOrEqualTo: query)
              .get();
      if (querySnapshot.docs.isEmpty) {
        print('No users found, returning empty list');
        return <UserDto>[]; // Return empty list if no users exist
      }

      return querySnapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) =>
              UserDto.fromJson(doc.data()))
          .toList();
    } catch (e, s) {
      if (e is FirebaseException) {
        throw ServerException(e.message!);
      } else {
        throw ServerException(s.toString());
      }
    }
  }
}
