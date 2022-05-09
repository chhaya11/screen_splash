import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:splash_screen/utils/ui_utils.dart';

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
      body: Stack(
        children: [
          MobileScanner(
              allowDuplicates: false,
              controller: cameraController,
              onDetect: (barcode, args) {
                 final String? code = barcode.rawValue;
                if (code?.isEmpty==false) {
                    showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          
                          content: Text("Hello"),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                        );
                      }, barrierColor: Colors.transparent);
                    
                  // showFlushbar(
                  //     'Successful Scan',
                  //     'You can now view the same in history',
                  //     Icon(Icons.check_circle_outline_rounded,
                  //         color: Colors.red),
                  //     context);
                } else {
                  showFlushbar('hye', 'bye', Icon(Icons.boy), context);
                }
                // print('Barcode found! $code');
              }),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'Scan',
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0.0,
              actions: [
                IconButton(
                  color: Colors.amberAccent,
                  icon: ValueListenableBuilder(
                      valueListenable: cameraController.torchState,
                      builder: (context, state, child) {
                        switch (state as TorchState) {
                          case TorchState.off:
                            return const Icon(Icons.flash_off,
                                color: Colors.white);
                          case TorchState.on:
                            return const Icon(Icons.flash_on,
                                color: Colors.yellow);
                        }
                      }),
                  iconSize: 32.0,
                  onPressed: () => cameraController.toggleTorch(),
                ),
                IconButton(
                  color: Colors.red,
                  icon: ValueListenableBuilder(
                    valueListenable: cameraController.cameraFacingState,
                    builder: (context, state, child) {
                      switch (state as CameraFacing) {
                        case CameraFacing.front:
                          return const Icon(Icons.camera_front,
                              color: Colors.white);
                        case CameraFacing.back:
                          return const Icon(Icons.camera_rear,
                              color: Colors.white);
                      }
                    },
                  ),
                  iconSize: 28.0,
                  onPressed: () => cameraController.switchCamera(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
