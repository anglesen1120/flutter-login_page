import 'package:flutter/material.dart';
import 'loading_screen.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
  title: 'Named',
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes:{
    '/':(context) => GetStarted(),
    '/login':(context) => Login(),
  },
));
