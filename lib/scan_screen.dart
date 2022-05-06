import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scan_Screen extends StatefulWidget {
  const Scan_Screen({Key? key}) : super(key: key);

  @override
  State<Scan_Screen> createState() => _Scan_ScreenState();
}

class _Scan_ScreenState extends State<Scan_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(onPressed: (){},
        icon: Icon(Icons.abc)),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Column(
        children: [
          Text("hello"),
        ],
      ),
    );
  }
}
