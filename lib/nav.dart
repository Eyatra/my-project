import 'package:flutter/material.dart';
import 'package:pfe_project/Home.dart';
import 'package:pfe_project/dashbord.dart';
import 'Dashboard/dashboard_iot.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;
  late List<Widget> _listOptions;

  @override
  void initState() {
    super.initState();
    _listOptions = <Widget>[      MyHome(),      Dashboard(),    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("hello")),
      body: _listOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home)),
          BottomNavigationBarItem(icon: const Icon(Icons.menu)),
          BottomNavigationBarItem(icon: const Icon(Icons.chat_bubble)),
          BottomNavigationBarItem(icon: const Icon(Icons.settings)),
        ],
      ),
    );
  }
}