import 'package:flutter/material.dart';
import 'package:strongpay/data/sharedpreference_helper.dart';

class Theming {


  bool isDark;

  /// It's a singleton, calling it more than once
  /// will result in the same instance of the same
  /// object
  static Theming _instance;


  factory Theming.getInstance({bool isDark = false}) {
    _instance ??= Theming._internalConstructor(isDark);
    return _instance;
  }

  Theming._internalConstructor(this.isDark);

  Future<bool> _isDarkTheme() async {

    bool isDarkPref = await SharedPreferenceHelper.isDarkThemePref();

    return isDarkPref;

  }

  Future<ThemeData> getThemeData() async {

    bool isDark = await _isDarkTheme();
    if(isDark) {
      return ThemeData();
    } else {
      return ThemeData();
    }

  }

}