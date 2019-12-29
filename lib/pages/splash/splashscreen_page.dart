import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:strongpay/pages/index/index_page.dart';
import 'package:strongpay/pages/login/login_page.dart';
import 'package:strongpay/pages/pin/pin_page.dart';
import 'package:strongpay/utils/sp_constants.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  bool _isDark = false;

  Image _logoDarkTheme = Image.asset('images/logo_strongpay_yellow.png');
  Image _logoLightTheme = Image.asset('images/logo_strongpay_black.png');

  Color _backgroundDarkTheme = Colors.black;
  Color _backgroundLightTheme = Colors.white;

  bool _shouldFadeOut = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDark ? _backgroundDarkTheme : _backgroundLightTheme,
      body: Center(
          child: _isDark
              ? AnimatedOpacity(
                  opacity: _shouldFadeOut ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    child: _logoDarkTheme,
                  ),
                )
              : AnimatedOpacity(
                  opacity: _shouldFadeOut ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    child: _logoLightTheme,
                  ),
                )),
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);

    super.initState();

    /// DEBUG ONLY
    SharedPreferences.setMockInitialValues({
      SPConstants.USER_EMAIL_KEY: "",
      SPConstants.USER_PASSWORD_KEY: "",
      SPConstants.USER_PIN_KEY: ""
    });

    SchedulerBinding.instance.addPostFrameCallback((_) {
      final Brightness brightnessValue =
          MediaQuery.of(context).platformBrightness;
      setState(() {
        _isDark = brightnessValue == Brightness.dark;
        _shouldFadeOut = true;
      });
      initSplashScreen();
    });
  }

  Future<void> initSplashScreen() async {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    bool isUserLogged = await checkIfUserIsLogged();

    await Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
//          builder: (_) => isUserLogged ? PinPage() : LoginPage()
              builder: (_) => IndexPage()));
    });
  }

  Future<bool> checkIfUserIsLogged() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userEmail = prefs.getString(SPConstants.USER_EMAIL_KEY);
    return (userEmail != null && userEmail.isNotEmpty);
  }
}
