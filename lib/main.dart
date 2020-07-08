import 'package:flutter/material.dart';
import 'package:lets_begin/home_page.dart';
import 'package:lets_begin/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Lets Begin Flutter",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
    routes: {
      "/login":(context) => LoginPage(),
      "/home" : (context) => HomePage()
    },
  ));
}



