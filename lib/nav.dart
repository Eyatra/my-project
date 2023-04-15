import 'package:flutter/material.dart';
import 'package:pfe_project/Home.dart';
import 'package:pfe_project/dashbord.dart';
class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;  

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  int _currentIndex = 0;
 List<Widget>  listOptions= <Widget>[
      MyHome()
     
 ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
    home: Scaffold(
    appBar:AppBar(title:const Text("hello")),
    bottomNavigationBar:BottomNavigationBar(
   currentIndex: _currentIndex,
   onTap: ((index) {
    setState(() {
      _currentIndex =index;
    });



      
   }
   
   
   
   ),


      
    
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home)),
        
      BottomNavigationBarItem(icon: Icon(Icons.menu)),
      
      BottomNavigationBarItem(icon: Icon(Icons.chat_bubble)),
        
      BottomNavigationBarItem(icon: Icon(Icons.settings)),
        
      ]

      ),
      body:listOptions.elementAt(_currentIndex),
    );
  }
}
