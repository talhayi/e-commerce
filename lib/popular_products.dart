import 'package:flutter/material.dart';

class PopularProducts extends StatefulWidget {
  static String routeName = "/popularProducts";
  @override
  _PoupularProductsState createState() => _PoupularProductsState();
}

class _PoupularProductsState extends State<PopularProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Popüler Ürünler",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      )),
    );
  }
}
