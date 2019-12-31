import 'package:flutter/material.dart';
import 'package:strongpay/ui/splash/splashscreen_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StrongPay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.montserrat().fontFamily),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.montserrat().fontFamily),
      home: SplashScreenPage(),
    );
  }
}
