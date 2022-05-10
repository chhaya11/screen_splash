import 'dart:async';
import 'dart:ui';

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
  String barcodeAssign = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(
              allowDuplicates: false,
              controller: cameraController,
              onDetect: (barcode, args) {
                barcodeAssign = barcode.rawValue ?? "";
                if (barcodeAssign.isEmpty == false) {
                  Timer(Duration(seconds: 3), () {
                    Navigator.pop(context);
                    showProductDetailDialog();
                  });
                  showSuccessDialog();
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

  void showSuccessDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            content: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Colors.green,
                      ),
                      child: Icon(
                        Icons.check_circle_outline_rounded,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      height: 100,
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Successful Scan",
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'You can now view the same in history',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 0,
          );
        },
        barrierColor: Colors.transparent);
  }

  void showProductDetailDialog() {
    showDialog(
        context: context,        
        builder: (context) {
          return Container(
            height: 200,
            child: Stack(             
              children:[
                Positioned.fill(
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [                      
                      Text(
                        'Product Details',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Image.asset('asset/images/qr-code-detail.png'),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('ID - ${barcodeAssign}',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'product : pamper',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Company Name",
                            style: TextStyle(color: Colors.grey, fontSize: 13.0),
                          ),
                          Text(
                            "CheckMyProduct",
                            style: TextStyle(color: Colors.black, fontSize: 14.0),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(color: Colors.grey, fontSize: 13.0),
                          ),
                          Text(
                            "6 Pec",
                            style: TextStyle(color: Colors.black, fontSize: 14.0),
                          )
                        ],
                      ),                
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(color: Colors.grey, fontSize: 13.0),
                          ),
                          Text(
                            "2.65",
                            style: TextStyle(color: Colors.black, fontSize: 14.0),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            Positioned(
              right: 0,
              child: Container(
                child:Image.asset('asset/images/cross.png'),
              ),
            ),
              ]
            ),
          );
        });
  }
}
