import 'package:auto_route/auto_route.dart';
import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/router/app_router.dart';
import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:chat_me_mobile/core/widgets/templates/base_body.dart';
import 'package:chat_me_mobile/core/widgets/templates/empty_list.widget.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/domain/vo/User.vo.dart';
import 'package:chat_me_mobile/features/chat/usecases/is_existing_chat.dart';
import 'package:chat_me_mobile/features/user/data/bloc/user_bloc.dart';
import 'package:chat_me_mobile/features/user/usecases/search_users.usecase.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  late StackRouter _router;

  late AuthBloc _authBloc;
  late UserBloc _userBloc;

  late SearchUsersUsecase _searchUsersUsecase;
  late IsExistingChatUsecase _isExistingChatUsecase;

  late TextEditingController _searchController;

  @override
  void initState() {
    _router = AutoRouter.of(context);

    _authBloc = getIt<AuthBloc>();
    _userBloc = getIt<UserBloc>();

    _searchUsersUsecase = getIt<SearchUsersUsecase>();
    _isExistingChatUsecase = getIt<IsExistingChatUsecase>();

    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return BaseBody(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    onSubmitted: (String query) {
                      _searchUsersUsecase.execute(query);
                    },
                    style: TextStyle(
                      color: colorTheme.grey500_black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search Contacts...',
                      suffixIcon: InkWell(
                        onTap: () {
                          _searchUsersUsecase.execute(_searchController.text);
                        },
                        child: const Icon(
                          FluentIcons.search_24_regular,
                          color: CustomColors.darkOrange,
                        ),
                      ),
                      filled: true,
                      suffixIconColor: CustomColors.darkOrange,
                      fillColor: Colors.grey[200], // Background color
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
                  ),
                ),
              ),
              BlocSelector<UserBloc, UserState, List<UserVo>?>(
                bloc: _userBloc,
                selector: (UserState state) => state.searchedUsers,
                builder: (BuildContext context, List<UserVo>? searched) {
                  final List<UserVo>? searchedUsers = searched?.toList();
                  searchedUsers?.removeWhere((UserVo user) =>
                      user.uid == _authBloc.state.loginDatas?.uid);
                  return Positioned.fill(
                    top: 70,
                    child: ListView(
                      padding: const EdgeInsets.only(top: 8),
                      children: <Widget>[
                        BlocSelector<UserBloc, UserState, StateStatus>(
                          bloc: _userBloc,
                          selector: (UserState state) => state.stateStatus,
                          builder:
                              (BuildContext context, StateStatus stateStatus) {
                            if (stateStatus == StateStatus.loadingState) {
                              return Container(
                                constraints: BoxConstraints(
                                  minHeight: constraints.maxHeight,
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }

                            return const SizedBox.shrink();
                          },
                        ),
                        if (searchedUsers?.isEmpty ?? false)
                          Container(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: const EmptyListWidget(
                              title: 'Empty!',
                              subTitle: 'Search for contacts',
                              icon: 'assets/images/box.png',
                            ),
                          )
                        else
                          ...searchedUsers?.map(
                                (UserVo user) {
                                  return ListTile(
                                    title: Text(user.name ?? ''),
                                    subtitle: Text(user.email ?? ''),
                                    leading: CircleAvatar(
                                      backgroundColor: CustomColors.darkOrange,
                                      child: Text(
                                        user.name
                                                ?.substring(0, 1)
                                                .toUpperCase() ??
                                            '',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      _isExistingChatUsecase.execute(
                                        uid1: _authBloc.state.loginDatas?.uid ??
                                            '',
                                        uid2: user.uid ?? '',
                                      );
                                      _router.push(MessageRoute(
                                        currentUserId:
                                            _authBloc.state.loginDatas?.uid ??
                                                '',
                                        otherUserId: user.uid ?? '',
                                        name: user.name ?? '',
                                      ));
                                    },
                                  );
                                },
                              ) ??
                              <Widget>[],
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
