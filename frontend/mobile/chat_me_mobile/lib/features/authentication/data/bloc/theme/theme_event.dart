part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeTheme({required Brightness theme}) =
      _ChangeTheme;
}
