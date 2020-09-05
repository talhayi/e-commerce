import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:logdef/constants.dart';
import 'package:logdef/routs.dart';
import 'package:logdef/screens/splash/splash_screen.dart';

void main() {
  runApp(MaterialApp(
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Logical Defense",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
