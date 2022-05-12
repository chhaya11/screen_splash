import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  // final sampleList = [];
  // final sampleListTwo = <String>[];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // sampleList.add(4);
    //  sampleList.add("");
    // sampleListTwo.add(4);
    // sampleListTwo.add("");
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
                        borderSide: BorderSide.none
                      ),                
                    prefixIcon: Icon(Icons.search),
                     hintText: "Search here" ,
                     iconColor: Colors.black),
              ),
            ),
          ),
          Text("history"),
        ],
      ),
    );
  }
}
