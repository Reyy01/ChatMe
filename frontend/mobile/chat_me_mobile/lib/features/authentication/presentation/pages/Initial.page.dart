import 'package:auto_route/auto_route.dart';
import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/router/app_router.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/usecases/get_current_user.dart';
import 'package:chat_me_mobile/features/authentication/usecases/segment/dispose_segment_listener.dart';
import 'package:chat_me_mobile/features/authentication/usecases/segment/listen_segment_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late AuthBloc _authBloc;

  late ListenSegmentStreamUsecase _listenSegmentStreamUsecase;
  late DisposeSegmentListenerUsecase _disposeSegmentListenerUsecase;
  late GetCurrentUserUsecase _getCurrentUserUsecase;

  late StackRouter _router;

  @override
  void initState() {
    _authBloc = getIt<AuthBloc>();

    _listenSegmentStreamUsecase = getIt<ListenSegmentStreamUsecase>();
    _disposeSegmentListenerUsecase = getIt<DisposeSegmentListenerUsecase>();
    _getCurrentUserUsecase = getIt<GetCurrentUserUsecase>();

    _router = AutoRouter.of(context);

    _listenSegmentStreamUsecase.execute(context);
    _getCurrentUserUsecase.execute();
    // _router.popAndPush(const LoginRoute());
    super.initState();
  }

  @override
  void dispose() {
    _disposeSegmentListenerUsecase.execute();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
            Colors.white,
            Colors.white,
          ])),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocListener<AuthBloc, AuthState>(
            bloc: _authBloc,
            listener: _authListener,
            child: _loading,
          ),
        ),
      ),
    );
  }

  Widget get _loading => const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[CircularProgressIndicator()],
        ),
      );

  void _authListener(BuildContext context, AuthState state) {
    if (state.stateStatus == StateStatus.errorState) {}

    if (state.stateStatus == StateStatus.loadedState) {
      if (state.navigatePage == NavigatePage.loginPage &&
          state.authStatus == AuthStatus.unauthenticated) {
        _router.popAndPush(const LoginRoute());
      }
    }

    if (state.navigatePage == NavigatePage.homePage &&
        state.authStatus == AuthStatus.authenticated) {
      _router.popAndPush(const HomeRoute());
    }
  }
}
