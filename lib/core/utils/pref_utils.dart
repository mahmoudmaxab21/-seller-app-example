import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setUserID(int value) {
    return _sharedPreferences!.setInt('UserID', value);
  }

  int getUserID() {
    try {
      return _sharedPreferences!.getInt('UserID') ?? 0;
    } catch (e) {
      return 0;
    }
  }

  Future<void> setToken(String value) {
    return _sharedPreferences!.setString('Token', value);
  }

  String getToken() {
    try {
      return _sharedPreferences!.getString('Token') ?? '';
    } catch (e) {
      return '';
    }
  }
}
