import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/core/widgets/atoms/Button.atom.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/usecases/logout_user.usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthDetailsWidget extends StatefulWidget {
  const AuthDetailsWidget({super.key});

  @override
  State<AuthDetailsWidget> createState() => _AuthDetailsWidgetState();
}

class _AuthDetailsWidgetState extends State<AuthDetailsWidget> {
  late AuthBloc _authBloc;

  late LogoutUserUsecase _logoutUserUsecase;

  @override
  void initState() {
    _authBloc = getIt<AuthBloc>();
    _logoutUserUsecase = getIt<LogoutUserUsecase>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return Container(
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BlocBuilder<AuthBloc, AuthState>(
                    bloc: _authBloc,
                    builder: (BuildContext context, AuthState state) {
                      final String? email = state.loginDatas?.name;
                      final String? emailPrefix = email?.substring(0, 1);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            child: CircleAvatar(
                              backgroundColor: colorTheme.shadow_grey_white,
                              child: Text(
                                emailPrefix?.toUpperCase() ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorTheme.black_white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            email ?? '',
                            style: TextStyle(
                              color: colorTheme.black_white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40,
                    child: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ButtonAtom(
              text: 'Requests',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            BlocSelector<AuthBloc, AuthState, StateStatus>(
              bloc: _authBloc,
              selector: (AuthState state) => state.stateStatus,
              builder: (BuildContext context, StateStatus state) {
                return ButtonAtom(
                  text: 'Logout',
                  isLoading: state == StateStatus.loadingState,
                  onPressed: () {
                    _logoutUserUsecase.execute();
                    // _disposeChatStreamUsecase.execute();
                  },
                );
              },
            ),
          ],
        ));
  }
}
