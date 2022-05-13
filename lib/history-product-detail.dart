import 'dart:ui';

import 'package:flutter/material.dart';

class HistoryProductDetail extends StatefulWidget {
  const HistoryProductDetail({Key? key}) : super(key: key);

  @override
  State<HistoryProductDetail> createState() => _HistoryProductDetailState();
}

class _HistoryProductDetailState extends State<HistoryProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: Text('Product Details'),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('asset/images/qr-code-detail.png'),            
          ),
          SizedBox(height: 15,),
          Text("ID: 46237823929", style: TextStyle(
            fontWeight: FontWeight.w600,
          ),),

           SizedBox(height: 10.0,),
           Text("Product: Paper", style: TextStyle(
           fontSize: 13.0,color: Colors.grey
          ),),
              SizedBox(height: 25.0,),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Code Type'),
               Text('QR Code'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Company Name'),
               Text('Check My Product'),
            ],
          ),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price'),
               Text('\$2.65'),
            ],
          ),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Manufacuture Date'),
               Text('05-02-2021'),
            ],
          ),
        ),
        ],
      ),
      
    );
  }
}
