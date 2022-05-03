import 'package:flutter/material.dart';
import 'package:splash_screen/forget_password.dart';
import 'package:splash_screen/home.dart';
import 'package:splash_screen/login_screen.dart';
import 'package:splash_screen/otp_screen.dart';
import 'package:splash_screen/reset_password_successful.dart';
import 'package:splash_screen/reset_pasword.dart';
import 'package:splash_screen/scan_screen.dart';
import 'package:splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'splash',
      routes: {'splash': (context) => Scan_Screen()},
    );
  }
}
