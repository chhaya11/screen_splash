import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scan_Screen extends StatefulWidget {

  const Scan_Screen({Key? key}) : super(key: key);

  @override
  State<Scan_Screen> createState() => _Scan_ScreenState();
}

class _Scan_ScreenState extends State<Scan_Screen> {
  @override
  MobileScannerController cameraController = MobileScannerController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(onPressed: () async {
          await Flushbar(
            title: 'Hey Ninja',
            message:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            duration: Duration(seconds: 3),
          ).show(context);
        }, icon: Icon(Icons.abc)),
        backgroundColor: Colors.transparent,
        elevation: 0.9,

      actions: [
            IconButton(
              color: Colors.amberAccent,
              icon: ValueListenableBuilder(
                valueListenable: cameraController.torchState,
                builder: (context, state, child) {
                  switch (state as TorchState) {
                    case TorchState.off:
                      return const Icon(Icons.flash_off, color: Colors.white);
                    case TorchState.on:
                      return const Icon(Icons.flash_on, color: Colors.yellow);
                  }
                }
              ),
              iconSize: 32.0,
              onPressed: () => cameraController.toggleTorch(),
            ),
            IconButton(
              color: Colors.white,
              icon: ValueListenableBuilder(
                valueListenable: cameraController.cameraFacingState,
                builder: (context, state, child) {
                  switch (state as CameraFacing) {
                    case CameraFacing.front:
                      return const Icon(Icons.camera_front ,color: Colors.white);
                    case CameraFacing.back:
                      return const Icon(Icons.camera_rear ,color: Colors.white);
                  }
                },
              ),
              iconSize: 28.0,
              onPressed: () => cameraController.switchCamera(),
            ),
          ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            MobileScanner(
            allowDuplicates: false,            
            controller: cameraController,
            onDetect: (barcode, args) {
              final String? code = barcode.rawValue;
              print('Barcode found! $code');
            }
            ),
          ],
        ),
      ),
    );
  }
}
