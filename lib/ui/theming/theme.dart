import 'package:strongpay/data/sharedpreference_helper.dart';

class Theme {


  bool isDark;

  /// It's a singleton, calling it more than once
  /// will result in the same instance of the same
  /// object
  static Theme _instance;


  factory Theme.getInstance({bool isDark = false}) {
    _instance ??= Theme._internalConstructor(isDark);
    return _instance;
  }

  Theme._internalConstructor(this.isDark);

  Future<bool> _isDarkTheme() async {

    bool isDarkPref = await SharedPreferenceHelper.isDarkThemePref();

    return isDarkPref;

  }


}