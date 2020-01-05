import 'package:shared_preferences/shared_preferences.dart';
import 'package:strongpay/utils/sp_constants.dart';

class SharedPreferenceHelper {
  static SharedPreferences _preferences;

  static Future<void> setDarkTheme(bool isDark) async {
    _preferences = await _getPrefs();

    _preferences.setBool(SPConstants.IS_DARK_THEME_KEY, isDark);
  }

  static Future<bool> isDarkThemePref() async {
    _preferences = await _getPrefs();

    return _preferences.getBool(SPConstants.IS_DARK_THEME_KEY);
  }

  static Future<SharedPreferences> _getPrefs() async {
    if (_preferences == null)
      _preferences = await SharedPreferences.getInstance();

    return _preferences;
  }

  static initDebugValues() {
    /// DEBUG ONLY
    SharedPreferences.setMockInitialValues({
      SPConstants.USER_EMAIL_KEY: "",
      SPConstants.USER_PASSWORD_KEY: "",
      SPConstants.USER_PIN_KEY: ""
    });
  }
}
