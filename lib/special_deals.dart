import 'package:flutter/material.dart';

class SpecialDeals extends StatefulWidget {
  static String routeName = "/specialDeals";
  @override
  _SpecialDealsState createState() => _SpecialDealsState();
}

class _SpecialDealsState extends State<SpecialDeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Özel Fırsat Ürünleri",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      )),
    );
  }
}
