import 'package:auto_route/auto_route.dart';
import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/router/app_router.dart';
import 'package:chat_me_mobile/core/utils/date_utils.dart';
import 'package:chat_me_mobile/core/widgets/templates/base_body.dart';
import 'package:chat_me_mobile/core/widgets/templates/empty_list.widget.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:chat_me_mobile/features/chat/data/bloc/chat_bloc.dart';
import 'package:chat_me_mobile/features/chat/domain/vo/Chat.vo.dart';
import 'package:chat_me_mobile/features/chat/presentation/widgets/MessageTile.widget.dart';
import 'package:chat_me_mobile/features/chat/usecases/delete_message.dart';
import 'package:chat_me_mobile/features/chat/usecases/get_chats.usecase.dart';
// import 'package:chat_me_mobile/features/chat/usecases/send_message.usecase.dart';
import 'package:chat_me_mobile/features/user/data/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

@RoutePage()
class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  late StackRouter _router;

  late AuthBloc _authBloc;
  late ChatBloc _chatBloc;
  late UserBloc _userBloc;

  // late SendMessageUsecase _sendMessageUsecase;
  late GetChatsUsecase _getChatsUsecase;
  late DeleteMessageUsecase _deleteMessageUsecase;

  late CMDateUtils _cmDateUtils;

  @override
  void initState() {
    _router = AutoRouter.of(context);

    _authBloc = getIt<AuthBloc>();
    _chatBloc = getIt<ChatBloc>();
    _userBloc = getIt<UserBloc>();

    // _sendMessageUsecase = getIt<SendMessageUsecase>();
    _getChatsUsecase = getIt<GetChatsUsecase>();
    _deleteMessageUsecase = getIt<DeleteMessageUsecase>();

    _cmDateUtils = getIt<CMDateUtils>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: <SingleChildWidget>[
        _chatListener(),
      ],
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return BaseBody(
            child: Stack(
              children: <Widget>[
                BlocSelector<ChatBloc, ChatState, StateStatus>(
                  bloc: _chatBloc,
                  selector: (ChatState state) => state.stateStatus,
                  builder: (BuildContext context, StateStatus stateStatus) {
                    if (stateStatus == StateStatus.loadingState) {
                      return Container(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    }

                    return const SizedBox.shrink();
                  },
                ),
                BlocSelector<ChatBloc, ChatState, List<ChatVo>>(
                  bloc: _chatBloc,
                  selector: (ChatState state) => state.chats,
                  builder: (BuildContext context, List<ChatVo> chats) {
                    return RefreshIndicator(
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          if (chats.isEmpty) ...<Widget>[
                            Container(
                              constraints: BoxConstraints(
                                minHeight: constraints.maxHeight,
                              ),
                              child: const EmptyListWidget(
                                title: 'Empty!',
                                subTitle: 'You have no chats at this moment.',
                                icon: 'assets/images/box.png',
                              ),
                            ),
                          ] else
                            ...chats.map((ChatVo e) {
                              return BlocSelector<UserBloc, UserState,
                                  List<UserVo>?>(
                                bloc: _userBloc,
                                selector: (UserState state) => state.users,
                                builder: (BuildContext context,
                                    List<UserVo>? users) {
                                  final String otherRecipientId = e.participants
                                          ?.firstWhere(
                                              (String element) =>
                                                  element !=
                                                  _authBloc
                                                      .state.loginDatas?.uid,
                                              orElse: () => '') ??
                                      '';
                                  final String? recipient = users
                                      ?.firstWhere(
                                          (UserVo element) =>
                                              element.uid == otherRecipientId,
                                          orElse: () => const UserVo())
                                      .name;
                                  final String lastMessage =
                                      e.messages?.isEmpty ?? true
                                          ? ''
                                          : e.messages?.last.content ?? '';
                                  final String lastMessageTime =
                                      e.messages?.isEmpty ?? true
                                          ? ''
                                          : e.messages?.last.sentAt
                                                  .toString() ??
                                              '';
                                  final bool isOnline = users
                                          ?.firstWhere(
                                              (UserVo element) =>
                                                  element.uid ==
                                                  otherRecipientId,
                                              orElse: () => const UserVo())
                                          .status ==
                                      UserStatus.online.name;

                                  return Dismissible(
                                    direction: DismissDirection.endToStart,
                                    background: Container(
                                      color: Colors.red,
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(
                                            Icons.delete,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                    onDismissed: (DismissDirection direction) {
                                      if (direction ==
                                          DismissDirection.endToStart) {
                                        _deleteMessageUsecase
                                            .execute(e.id ?? '');
                                      }
                                    },
                                    key: Key(e.id ?? ''),
                                    child: MessageTileWidget(
                                      name: recipient ?? '',
                                      lastMessage: lastMessage,
                                      time: _cmDateUtils.getDateTimeAgo(
                                          DateTime.parse(lastMessageTime)),
                                      isOnline: isOnline,
                                      onTap: () {
                                        _router.push(
                                          MessageRoute(
                                            chatId: e.id ?? '',
                                            currentUserId: _authBloc
                                                    .state.loginDatas?.uid ??
                                                '',
                                            otherUserId: otherRecipientId,
                                            name: recipient ?? '',
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            }),
                        ],
                      ),
                      onRefresh: () async {
                        _getChatsUsecase.execute(
                          _authBloc.state.loginDatas?.uid ?? '',
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Listeners
  ///
  SingleChildWidget _chatListener() {
    return BlocListener<ChatBloc, ChatState>(
      bloc: _chatBloc,
      listenWhen: (ChatState previous, ChatState current) {
        return previous.stateStatus != current.stateStatus;
      },
      listener: (BuildContext context, ChatState state) {
        if (state.stateStatus == StateStatus.errorState) {
          print('Error: ${state.errorMessage}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage ?? 'An error occurred'),
            ),
          );
        }
      },
    );
  }
}
