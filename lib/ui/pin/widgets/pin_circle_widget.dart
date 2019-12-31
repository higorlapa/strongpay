import 'package:flutter/material.dart';

class PinCircleWidget extends StatelessWidget {
  final String value;
  final bool isDarkTheme;

  final Color _darkThemeBorderColor = Colors.white;
  final Color _lightThemeBorderColor = Colors.black;

  final Color _darkThemeEmptyColor = Colors.black;
  final Color _lighthemeEmptyColor = Colors.white;

  PinCircleWidget({this.value, this.isDarkTheme = false})
      : assert(value != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 20,
      height: 20,
      decoration: new BoxDecoration(
        border: Border.all(
            color:
                isDarkTheme ? _darkThemeBorderColor : _lightThemeBorderColor),
        color: value.isEmpty
            ? (isDarkTheme ? _darkThemeEmptyColor : _lighthemeEmptyColor)
            : (isDarkTheme ? _lighthemeEmptyColor : _darkThemeEmptyColor),
        shape: BoxShape.circle,
      ),
    );
  }
}
