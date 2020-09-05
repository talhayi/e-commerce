import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:logdef/constants.dart';
import 'package:logdef/model/product.dart';
import 'package:logdef/product_detail.dart';
import 'package:logdef/size_config.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Material(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.08,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: size.height * 0.08,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36))),
                  ),
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.5),
                            )
                          ]),

                      child: TextField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: "  Log-Def'de ara",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                            fontSize: 20,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            buildSpacer(),
            Carousel(
              products: shirts,
              title: "Popüler Ürünler",
              routeName: "/popularProducts",
            ),
            buildSpacer(),
            SpecialDealsBox(
              products: shoes,
              routeName: "/specialDeals",
              title: "Özel Fırsatlar",
            ),
            buildSpacer(),
            Container(
              height: 400,
              child: Grid(
                products: jackets,
              ),
            ),
            buildSpacer(),
            SpecialDealsBox(
              products: pants,
              routeName: "/specialDeals",
              title: "%20 İndirimli Ürünler",
            ),
            buildSpacer(),
          ],
        ),
      ),
    );
  }

  buildSpacer() {
    return SizedBox(
      height: 10.0,
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    Key key,
    @required this.products,
    @required this.title,
    @required this.routeName,
  }) : super(key: key);

  final List<Product> products;
  final String title;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlayCurve: Curves.easeInOutBack,
                  autoPlay: true,
                  height: getProportionateScreenHeight(250),
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int itemIndex) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(products[itemIndex].image),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SpecialDealsBox extends StatelessWidget {
  const SpecialDealsBox({
    Key key,
    @required this.products,
    @required this.routeName,
    @required this.title,
  }) : super(key: key);

  final List<Product> products;
  final String routeName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: Offset(0, 3),
                )
              ]),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                child: Row(
                  children: <Widget>[
                    Text(title,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        )),
                  ],
                ),
              ),
              Container(
                height: 180.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100.0,
                      child: Column(
                        children: <Widget>[
                          Card(
                            child: Image(
                              image: AssetImage(products[index].image),
                            ),
                          ),
                          Text(products[index].productName),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  Grid({
    Key key,
    @required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 96) / 2.1;
    final double itemWidth = size.width / 2;
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: (itemWidth / itemHeight),
      shrinkWrap: true,
      children: List.generate(
        products.length,
        (index) {
          return Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Image(
                      image: AssetImage(products[index].image),
                    ),
                  ),
                  Text(products[index].productName),
                  Text("${products[index].price} TL"),
                ],
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetail(product: products[index]),
                        ));
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
