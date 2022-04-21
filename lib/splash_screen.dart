import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset('asset/images/splash.png'),
            ),
            Container(child: Text("Check My Product" , style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
            )
            ),
          ]
        ),
      ),
    );
  }
}
