import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'screens/screens.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  bool _isDark = false;

  int _selectedPage = 0;

  final _pageOptions = [HomeScreen(), SendScreen(), SwapScreen(), ReceiveScreen()];

  AppBar _appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar ?? AppBar(),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: _isDark ? Colors.white : Colors.black,
        unselectedItemColor: _isDark ? Colors.black : Colors.grey,
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

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      final Brightness brightnessValue =
          MediaQuery.of(context).platformBrightness;
      setState(() {
        _isDark = brightnessValue == Brightness.dark;
        _initUi();
      });
    });
  }

  void _initUi() {
    setState(() {
      _appBar = _isDark
          ? AppBar(
              title: Text(
                "StrongPay",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            )
          : AppBar(
              title: Text("StrongPay",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              centerTitle: true,
              backgroundColor: Colors.yellow,
            );
    });
  }
}
