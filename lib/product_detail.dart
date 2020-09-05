import 'package:flutter/material.dart';
import 'package:logdef/constants.dart';
import 'package:logdef/drawer.dart';
import 'package:logdef/model/product.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key key, @required this.product}) : super(key: key);
  final Product product;

  @override
  _ProductDetailState createState() => _ProductDetailState(product);
}

class _ProductDetailState extends State<ProductDetail> {
  GlobalKey<ScaffoldState> scaffold = GlobalKey();
  final Product product;

  _ProductDetailState(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
      drawer: Drawer(child: DrawerBuilder()),
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
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Hero(
                tag: product.image,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                          image: AssetImage(product.image),
                        ),
                      ),
                      Text(
                        product.productName,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${product.price} TL",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.description,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
