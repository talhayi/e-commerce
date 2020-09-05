import 'package:flutter/material.dart';
import 'package:logdef/drawer.dart';
import 'package:logdef/home_screen_body.dart';
import 'package:logdef/constants.dart';

class Myapp2 extends StatefulWidget {
  static String routeName = "/logdef";
  @override
  LogDef createState() => LogDef();
}

class LogDef extends State<Myapp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Logical Defense"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          Positioned(
            child: Container(
              height: 54,
              decoration: BoxDecoration(color: Colors.white),
            ),
          )
        ],
      ),
      body: HomeScreen(),
      drawer: Drawer(
        child: DrawerBuilder(),
      ),
    );
  }
}
