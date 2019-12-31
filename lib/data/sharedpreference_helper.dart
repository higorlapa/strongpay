import 'package:shared_preferences/shared_preferences.dart';
import 'package:strongpay/utils/sp_constants.dart';

class SharedPreferenceHelper {

  static SharedPreferences _preferences;

  static Future<void> setDarkTheme(bool isDark) async {

    if(_preferences == null) _preferences = await SharedPreferences.getInstance();

    _preferences.setBool(SPConstants.IS_DARK_THEME_KEY, isDark);

  }

  static Future<bool> isDarkThemePref() async  {

    if(_preferences == null) _preferences = await SharedPreferences.getInstance();

    return _preferences.getBool(SPConstants.IS_DARK_THEME_KEY);

  }

}