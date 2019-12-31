import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:strongpay/ui/new_wallet/new_wallet_page.dart';
import 'package:strongpay/utils/enter_exit_route.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isDark = false;

  Image _logoDarkTheme = Image.asset('images/logo_yellow_strongpay_clean.png');
  Image _logoLightTheme = Image.asset('images/logo_black_strongpay_clean.png');

  Color _backgroundDarkTheme = Colors.black;
  Color _backgroundLightTheme = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDark ? _backgroundDarkTheme : _backgroundLightTheme,
      body: Stack(
        children: <Widget>[
          Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    child: _isDark ? _logoDarkTheme : _logoLightTheme,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Welcome to StrongPay',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Text(
                      'The Official SHND and SHMN Mobile Wallet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: _isDark ? Colors.grey : Colors.black38,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 40,
                  child: RaisedButton(
                    child: Text('Create a wallet',
                        style: TextStyle(
                            fontSize: 20,
                            color: _isDark ? Colors.white : Colors.black87,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          EnterExitRoute(
                              exitPage: LoginPage(),
                              enterPage: NewWalletPage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.yellow)),
                    color: Colors.yellow,
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'I already have a wallet',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      final Brightness brightnessValue =
          MediaQuery.of(context).platformBrightness;
      setState(() {
        _isDark = brightnessValue == Brightness.dark;
      });
    });
  }
}
