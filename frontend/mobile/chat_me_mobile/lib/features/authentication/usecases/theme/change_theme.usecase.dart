import 'package:chat_me_mobile/features/authentication/data/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeThemeUsecase {
  ChangeThemeUsecase({
    required this.themeBloc,
  });

  final ThemeBloc themeBloc;

  void execute(Brightness theme) {
    themeBloc.add(ThemeEvent.changeTheme(theme: theme));
  }
}
