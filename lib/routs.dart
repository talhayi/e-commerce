import 'package:flutter/widgets.dart';
import 'package:logdef/cart_screen.dart';
import 'package:logdef/home_screen_body.dart';
import 'package:logdef/screens/splash/splash_screen.dart';
import 'package:logdef/special_deals.dart';
import 'package:logdef/popular_products.dart';
import 'logdef.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  Myapp2.routeName: (context) => Myapp2(),
  HomeScreen.routeName: (context) => HomeScreen(),
  PopularProducts.routeName: (context) => PopularProducts(),
  SpecialDeals.routeName: (context) => SpecialDeals(),
  CartScreen.routeName: (context) => CartScreen(),
};
