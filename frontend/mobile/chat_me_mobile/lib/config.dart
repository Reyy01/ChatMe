// ignore_for_file: constant_identifier_names

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheKeys {
  /// auth keys
  ///

  static const String LOGGED_EMAIL = 'email';
  static const String LOGGED_USERNAME = 'username';
  static const String LOGGED_PASSWORD = 'password';
  static const String ACCESS_TOKEN = 'access_token';
  static const String REFRESH_TOKEN = 'refresh_token';
  static const String USER_ID = 'user_id';
}

class ScreenRoute {
  /// Root Paths
  /// Root paths should start with a "/"
  ///
  static const String INITIAL_ROUTE = '/';
  static const String LOGIN_ROUTE = '/LoginPage';
  static const String REGISTER_ROUTE = '/RegisterPage';
  static const String HOME_ROUTE = '/HomePage';
  static const String MESSAGE_ROUTE = '/MessagePage';
  static const String USER_DETAILS_ROUTE = '/UserDetailsPage';

  /// Nested
  /// Sub root paths should not start with a "/"
  static const String CHATS_ROUTE = 'ChatsPage';
  static const String CONTACTS_ROUTE = 'ContactsPage';
  static const String MENU_ROUTE = 'MenuPage';
}

abstract class Config {
  String get chatDevService;
  String get chatLocalService;
}

@LazySingleton(as: Config)
class ConfigImpl implements Config {
  ConfigImpl(this.prefs);
  final SharedPreferences prefs;

  /// Dev Environment
  ///
  @override
  String get chatDevService => 'TBD';

  /// Local Environment
  ///
  @override
  String get chatLocalService => 'TBD';
}
