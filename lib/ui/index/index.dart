import 'package:flutter/material.dart';

import 'screens/screens.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedPage = 0;

  final _pageOptions = [
    HomeScreen(),
    SendScreen(),
    SwapScreen(),
    ReceiveScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "StrongPay",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffffd600)),
        ),
        centerTitle: true,
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xffffd600),
        unselectedItemColor: Colors.black,
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.send), title: Text("Send")),
          BottomNavigationBarItem(icon: Icon(Icons.sync), title: Text("Swap")),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_received), title: Text("Receive")),
        ],
      ),
    );
  }
}
