import 'package:flutter/material.dart';

class Product {
  String productName;
  String image;
  String price;
  String description;

  Product({
    @required this.productName,
    @required this.image,
    @required this.price,
    @required this.description,
  });
}
