import 'dart:async';
import 'package:chat_me_mobile/core/router/app_router.dart';
import 'package:chat_me_mobile/core/utils/firebase.utils.dart';
import 'package:chat_me_mobile/core/utils/theme.utils.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await setupFirebase();
      await configureInjection(Environment.prod);
      runApp(const MyApp());
    },
    _data,
  );
}

void _data(Object e, StackTrace s) {}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeBloc _themeBloc;

  late AppRouter _appRouter;

  @override
  void initState() {
    _themeBloc = getIt<ThemeBloc>();

    _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ThemeBloc, ThemeState, Brightness>(
      bloc: _themeBloc,
      selector: (ThemeState state) => state.theme,
      builder: (BuildContext context, Brightness state) {
        return MaterialApp.router(
          key: const ValueKey<String>('app-key'),
          theme: appTheme(state),
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
