import 'package:chat_me_mobile/config.dart';
import 'package:chat_me_mobile/core/logic/cache_exeption.dart';
import 'package:chat_me_mobile/core/logic/error_messages.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartz/dartz.dart';

abstract class AuthLocalDatasource {
  Future<Unit> saveCredentials(LoginUserDto loginData);
  Unit saveUser(String userId);
  Unit saveToken(String token);
  Future<LoginUserDto> getCredentials();
  Unit deleteCredetialsAndTokens();
}

@LazySingleton(as: AuthLocalDatasource)
class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  AuthLocalDatasourceImpl({
    required this.flutterSecureStorage,
    required this.sharedPreferences,
  });

  final FlutterSecureStorage flutterSecureStorage;
  final SharedPreferences sharedPreferences;

  @override
  Unit saveToken(String token) {
    try {
      sharedPreferences.setString(CacheKeys.ACCESS_TOKEN, token);
      return unit;
    } catch (e) {
      throw CacheException(ERR_SAVE_TOKEN);
    }
  }

  @override
  Future<Unit> saveCredentials(LoginUserDto loginData) async {
    try {
      await flutterSecureStorage.write(
          key: CacheKeys.LOGGED_EMAIL, value: loginData.email);
      await flutterSecureStorage.write(
          key: CacheKeys.LOGGED_PASSWORD, value: loginData.password);
      return unit;
    } catch (e) {
      throw CacheException(ERR_SAVE_CREDENTIALS);
    }
  }

  @override
  Unit saveUser(String userId) {
    try {
      sharedPreferences.setString(CacheKeys.USER_ID, userId);
      return unit;
    } catch (e) {
      throw CacheException(ERR_SAVE_TOKEN);
    }
  }

  @override
  Future<LoginUserDto> getCredentials() async {
    try {
      final String? email =
          await flutterSecureStorage.read(key: CacheKeys.LOGGED_EMAIL);
      final String? password =
          await flutterSecureStorage.read(key: CacheKeys.LOGGED_PASSWORD);

      final LoginUserDto loginDatasDto =
          LoginUserDto(email: email ?? '', password: password ?? '');
      return loginDatasDto;
    } catch (e) {
      throw CacheException(ERR_GET_CREDENTIALS);
    }
  }

  @override
  Unit deleteCredetialsAndTokens() {
    try {
      flutterSecureStorage.delete(key: CacheKeys.LOGGED_USERNAME);
      flutterSecureStorage.delete(key: CacheKeys.LOGGED_PASSWORD);
      // sharedPreferences.remove(CacheKeys.ACCESS_TOKEN);
      return unit;
    } catch (e) {
      throw CacheException(ERR_DEFAULT);
    }
  }
}
