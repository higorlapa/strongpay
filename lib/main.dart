import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strongpay/ui/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StrongPay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.montserrat().fontFamily
      ),
      home: SplashScreen(),
    );
  }
}
