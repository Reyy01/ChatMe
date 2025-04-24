import 'package:auto_route/auto_route.dart';
import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:chat_me_mobile/core/widgets/atoms/LoadingIndicator.atom.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:chat_me_mobile/features/chat/data/bloc/chat_bloc.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Message.vo.dart';
import 'package:chat_me_mobile/features/chat/usecases/get_messages.usecase.dart';
import 'package:chat_me_mobile/features/chat/usecases/send_message.usecase.dart';
import 'package:chat_me_mobile/features/user/data/bloc/user_bloc.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

@RoutePage()
class MessagePage extends StatefulWidget {
  const MessagePage({
    super.key,
    this.chatId,
    this.currentUserId,
    this.otherUserId,
    required this.name,
  });

  final String? chatId;
  final String? currentUserId;
  final String? otherUserId;
  final String name;

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  late ChatBloc _chatBloc;
  late UserBloc _userBloc;

  late GetMessagesUsecase _getMessagesUsecase;
  late SendMessageUsecase _sendMessageUsecase;

  @override
  void initState() {
    _chatBloc = getIt<ChatBloc>();
    _userBloc = getIt<UserBloc>();

    _getMessagesUsecase = getIt<GetMessagesUsecase>();
    _sendMessageUsecase = getIt<SendMessageUsecase>();

    if (widget.chatId != null) {
      _getMessagesUsecase.execute(widget.chatId!);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return MultiBlocListener(
      listeners: <SingleChildWidget>[
        _chatListener(),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
        ),
        body: BlocBuilder<ChatBloc, ChatState>(
          bloc: _chatBloc,
          builder: (BuildContext context, ChatState chatState) {
            return DashChat(
              messageOptions: MessageOptions(
                avatarBuilder: (ChatUser user, Function? a, Function? b) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: SizedBox(
                      height: 40,
                      child: BlocSelector<UserBloc, UserState, bool>(
                        bloc: _userBloc,
                        selector: (UserState state) =>
                            state.users
                                ?.firstWhere(
                                  (UserVo element) =>
                                      element.uid == widget.otherUserId,
                                )
                                .status ==
                            UserStatus.online.name,
                        builder: (BuildContext context, bool isOnline) {
                          return Stack(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: CustomColors.darkOrange,
                                child: Text(
                                  widget.name.substring(0, 1).toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color:
                                        isOnline ? Colors.green : Colors.grey,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: colorTheme.white_blueGrey,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  );
                },
                currentUserContainerColor: CustomColors.darkOrange,
              ),
              currentUser: ChatUser(id: widget.currentUserId ?? ''),
              messages: <ChatMessage>[
                for (MessageVo message in chatState.messages)
                  ChatMessage(
                    text: message.content ?? '',
                    user: ChatUser(id: message.senderId ?? ''),
                    createdAt: message.sentAt != null
                        ? DateTime.parse(message.sentAt!)
                        : DateTime.now(),
                  ),
              ],
              inputOptions: InputOptions(
                inputTextStyle: TextStyle(
                  color: colorTheme.grey500_black,
                ),
                inputDecoration: InputDecoration(
                  hintText: 'Type a message...',
                  filled: true,
                  suffixIconColor: CustomColors.darkOrange,
                  fillColor: Colors.grey[200], // Background color
                  suffixIcon: chatState.stateStatus == StateStatus.loadingState
                      ? const Padding(
                          padding: EdgeInsets.all(12.0), // Adjust size
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: LoadingIndicatorAtom(
                              loadingColor: CustomColors.darkOrange,
                            ),
                          ),
                        )
                      : null,
                  hintStyle: TextStyle(
                    color: colorTheme.grey500_black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ), // Transparent border when unfocused
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: CustomColors.darkOrange,
                    ), // Change this if you want a different focus effect
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ), // Change this if you want a different error effect
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ), // Change this if you want a different error effect
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                sendButtonBuilder: (Function() onSend) {
                  return IconButton(
                    icon: const Icon(
                      FluentIcons.checkmark_12_filled,
                      color: CustomColors.darkOrange,
                      size: 35,
                    ),
                    onPressed: onSend,
                  );
                },
              ),
              onSend: (ChatMessage message) {
                _sendMessageUsecase.execute(
                  chatId: widget.chatId,
                  uid1: widget.currentUserId ?? '',
                  uid2: widget.otherUserId ?? '',
                  message: MessageVo(
                    content: message.text,
                    senderId: widget.currentUserId,
                    sentAt: message.createdAt.toString(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Listeners
  ///
  SingleChildWidget _chatListener() {
    return BlocListener<ChatBloc, ChatState>(
      bloc: _chatBloc,
      listenWhen: (ChatState previous, ChatState current) {
        return previous.currentChatId != current.currentChatId;
      },
      listener: (BuildContext context, ChatState state) {
        if (widget.chatId == null) {
          _getMessagesUsecase.execute(state.currentChatId ?? '');
        }
      },
    );
  }
}
