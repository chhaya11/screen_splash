import 'package:flutter/material.dart';
import 'package:splash_screen/history-product-detail.dart';
import 'package:splash_screen/scan_screen.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        title: Text(
          "History",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.calendar_month_outlined),
            color: Colors.black,
          ),
        ],
      ),
      // bottom navigation bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          child: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              selectedFontSize: 14.0,
              unselectedFontSize: 12.0,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('asset/images/qr-code-scan-black.png'),
                    color: Colors.grey,
                  ),
                  activeIcon: (ImageIcon(
                    AssetImage('asset/images/qr-code-scan-white.png'),
                    color: Colors.white,
                  )),
                  label: 'Scan',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('asset/images/history-black-icon.png'),
                    color: Colors.grey,
                  ),
                  activeIcon: ImageIcon(
                    AssetImage('asset/images/history-white-icon.png'),
                    color: Colors.white,
                  ),
                  
                  label: 'History',
                  
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('asset/images/setting-black.png'),
                    color: Colors.grey,
                  ),
                  activeIcon: ImageIcon(
                    AssetImage('asset/images/setting-white.png'),
                    color: Colors.white,
                  ),
                  label: 'Setting',
                ),
              ]),
        ),
      ),
      body: Column(
        children: [
          // search bar of history
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: SizedBox(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.search ,color: Colors.black),
                    hintText: "Search here",
                    iconColor: Colors.black),
              ),
            ),
          ),
          // listview of history
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HistoryProductDetail()));
              },
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0 || index == 4) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(14, 20, 0, 10),
                        child: Text("2021-02-15" ,style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                      child: PhysicalModel(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.transparent,
                        elevation: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.white],
                              stops: [0.05, 0.05],
                            ),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0),
                                bottom: Radius.circular(15.0)),
                            color: Colors.grey[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 12, 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 0, 10, 0),
                                  child: Image.asset('asset/images/qr-code.png'),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text('Code Type:',style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0
                                          ),),
                                           SizedBox(width: 4.0,),
                                          Text('QR CODE' ,style: TextStyle(
                                            fontSize: 13.0
                                          ),),
                                        ],
                                      ),
                                       SizedBox(height: 5.0,),
                                      Row(
                                        children: [
                                          Text('Product:' ,style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0
                                          ),),
                                          SizedBox(width: 4.0,),
                                          Text('Pamper' ,style: TextStyle(
                                            fontSize: 13.0
                                          ),),
                                        ],
                                      ),
                                       SizedBox(height: 5.0,),
                                      Row(
                                        children: [
                                          Text('Status:' ,style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0
                                          ),),
                                          SizedBox(width: 4.0,),
                                          Text('Valid' ,style: TextStyle(
                                            fontSize: 13.0
                                          ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  'asset/images/black-bg-right-arrow.png',
                                  height: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
