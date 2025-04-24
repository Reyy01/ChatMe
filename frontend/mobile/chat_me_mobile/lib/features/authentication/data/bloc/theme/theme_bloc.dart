import 'package:chat_me_mobile/core/router/segment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@lazySingleton
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(Segment segment) : super(ThemeState.initial()) {
    on<_ChangeTheme>((_ChangeTheme event, Emitter<ThemeState> emit) {
      emit(state.copyWith(theme: event.theme));
    });
  }
}
