import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strongpay/data/sharedpreference_helper.dart';

class Theming {


  Theming();

  Future<bool> _isDarkTheme() async {

    bool isDarkPref = await SharedPreferenceHelper.isDarkThemePref();

    return isDarkPref;

  }

  Future<ThemeData> getThemeData() async {

    bool isDark = await _isDarkTheme();

    String font = GoogleFonts.montserrat().fontFamily;
    if(isDark) {
      return ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
        fontFamily: font
      );
    } else {
      return ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.yellow,
        fontFamily: font
      );
    }

  }



}