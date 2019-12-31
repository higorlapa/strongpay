import 'package:flutter/material.dart';
import 'package:strongpay/ui/splash/splash.dart';
import 'package:strongpay/ui/theming/theme.dart';

void main() async {

  var theme = await  Theming.getInstance().getThemeData();
  runApp(MaterialApp(theme: theme));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final ThemeData theme;
  MyApp(this.theme);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StrongPay',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: SplashScreen(),
    );
  }
}
