import 'package:flutter/material.dart';
import 'package:withackathon/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    //'/': (context) => Loading(),
    '/home': (context) => Home(),
    //'/location': (context) => ChooseLocation(),
  },
));

