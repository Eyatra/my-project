import 'package:flutter/material.dart';
import 'package:pfe_project/login.dart';
import 'package:pfe_project/map.dart';
import 'package:pfe_project/nav.dart';
import 'package:pfe_project/regsiter.dart';
import 'package:pfe_project/Home.dart';
import 'Dashboard/dashboard_iot.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'nav',
    routes: {
      'home': (context) => const MyHome(),
      'login': (context) => const MyLogin(),
      'register': (context) => const MyRegister(),
      'dashboard': (context) => const Dashboard(),
      'nav' :(context) => const Nav(),
      'map':(context) => MyMap(),
    },
  ));
}
