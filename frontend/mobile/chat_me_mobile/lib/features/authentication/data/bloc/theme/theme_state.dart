part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required Brightness theme,
  }) = _SegmentState;

  factory ThemeState.initial() => const ThemeState(
        theme: Brightness.light,
      );
}
