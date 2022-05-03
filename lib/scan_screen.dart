import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scan_Screen extends StatefulWidget {
  const Scan_Screen({ Key? key }) : super(key: key);

  @override
  State<Scan_Screen> createState() => _Scan_ScreenState();
}

class _Scan_ScreenState extends State<Scan_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Hero(
        tag: Icons.keyboard_double_arrow_left_rounded,
       child: Text("helo")
       ),
    );
  }
}