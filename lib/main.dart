import 'package:flutter/material.dart';
import 'package:flutter_otp_verification/Screen/home_screen.dart';
import 'package:flutter_otp_verification/Screen/otp_screen.dart';
import 'package:flutter_otp_verification/constant/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorDark: Colors.brown,
        primaryColor: Colors.blueAccent,
      ),
      routes: <String, WidgetBuilder>{
        homeScreen: (BuildContext context) => HomePage(),
        otpScreen: (BuildContext context) => const OtpPage(),
      },
    );
  }
}
