import 'package:flutter/material.dart';
import 'package:lets_begin/home_page.dart';
import 'package:lets_begin/login_page.dart';
import 'package:lets_begin/util/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Lets Begin Flutter",
    home: Constants.prefs.getBool("loggedin")==true?HomePage():LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
    routes: {
      "/login":(context) => LoginPage(),
      "/home" : (context) => HomePage()
    },
  ));
}



