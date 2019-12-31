import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:strongpay/ui/pin/widgets/numeric_keyboard_widget.dart';
import 'package:strongpay/ui/pin/widgets/pin_circle_widget.dart';

class PinPage extends StatefulWidget {
  @override
  _PinPageState createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  Color _backgroundDarkTheme = Colors.black;
  Color _backgroundLightTheme = Colors.white;

  Image _logoDarkTheme = Image.asset('images/logo_yellow_strongpay_clean.png');
  Image _logoLightTheme = Image.asset('images/logo_black_strongpay_clean.png');

  bool _isDark = false;

  List<String> _pinValueList = List();

  final String _deleteCommand = "delete";

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
            child: Container(
              width: 120,
              height: 110,
              child: _isDark ? _logoDarkTheme : _logoLightTheme,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Type your pin',
                  style: TextStyle(
                      color: _isDark ? Colors.white : Colors.black,
                      fontSize: 18),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      PinCircleWidget(
                        value:
                            _pinValueList.length >= 1 ? _pinValueList[0] : "",
                        isDarkTheme: _isDark,
                      ),
                      PinCircleWidget(
                        value:
                            _pinValueList.length >= 2 ? _pinValueList[1] : "",
                        isDarkTheme: _isDark,
                      ),
                      PinCircleWidget(
                        value:
                            _pinValueList.length >= 3 ? _pinValueList[2] : "",
                        isDarkTheme: _isDark,
                      ),
                      PinCircleWidget(
                        value:
                            _pinValueList.length >= 4 ? _pinValueList[3] : "",
                        isDarkTheme: _isDark,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: NumericKeyBoardWidget(
                    onTapHandler: _onUserTapKeyboard,
                  ),
                )
              ],
            ),
          ),
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

  void _onUserTapKeyboard(String result) {
    if (result == _deleteCommand && _pinValueList.length >= 1) {
      setState(() {
        _pinValueList.removeLast();
      });
      return;
    } else if (result == _deleteCommand && _pinValueList.length == 0) {
      return;
    }

    if (_pinValueList.length == 4) {
      //check if everything is fine and redirect to main page or show an error message
    } else {
      setState(() {
        _pinValueList.add(result);
      });
    }
  }
}
