import 'package:flutter/material.dart';
import 'package:logdef/model/product.dart';

const kPrimaryColor = Color(0xFF0C9869);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
final kHintTextStyle = TextStyle(
  color: kPrimaryColor,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
const _kFontFam = 'MyFlutterApp';
const _kFontPkg = null;

const IconData plus_icon =
    IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData question_mark =
    IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData receipt =
    IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData remove =
    IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData search_icon =
    IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData settings =
    IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData shop_icon =
    IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData star_icon =
    IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData success =
    IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData trash =
    IconData(0xe809, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData twitter =
    IconData(0xe80a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData user_icon =
    IconData(0xe80b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData user =
    IconData(0xe80c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData arrow_right =
    IconData(0xe80d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData back_icon =
    IconData(0xe80e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData bell =
    IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData bill_icon =
    IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData call =
    IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData camera_icon =
    IconData(0xe812, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData cart_icon =
    IconData(0xe813, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData cash =
    IconData(0xe814, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData chat_bubble_icon =
    IconData(0xe815, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData check_mark_rounde =
    IconData(0xe816, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData close =
    IconData(0xe817, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData conversation =
    IconData(0xe818, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData discover =
    IconData(0xe819, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData error =
    IconData(0xe81a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData facebook_2 =
    IconData(0xe81b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData flash_icon =
    IconData(0xe81c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData game_icon =
    IconData(0xe81d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData gift_icon =
    IconData(0xe81e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData google_icon =
    IconData(0xe81f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData heart_icon =
    IconData(0xe820, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData heart_icon_2 =
    IconData(0xe821, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData location_point =
    IconData(0xe822, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData lock =
    IconData(0xe823, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData log_out =
    IconData(0xe824, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData mail =
    IconData(0xe825, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData parcel =
    IconData(0xe826, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData phone =
    IconData(0xe827, fontFamily: _kFontFam, fontPackage: _kFontPkg);

List<Product> jackets = [
  Product(
    image: "assets/images/jackets/1.jpg",
    description:
        "Ürün Tipi:          Günlük \nMarka:               Diğer \nCinsiyet:            Kadın \nKol Tipi:             Askılı \nKalıp:                 Asimetrik \nÜretim:              Yerli Üretim ",
    price: "100",
    productName: "İp Askılı Büstiyer",
  ),
  Product(
    image: "assets/images/jackets/2.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "Kırmızı Ceket",
  ),
  Product(
    image: "assets/images/jackets/3.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "Siyah Ceket",
  ),
  Product(
    image: "assets/images/jackets/4.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "Sarı Ceket",
  ),
  Product(
    image: "assets/images/jackets/5.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/jackets/6.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/jackets/7.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/jackets/8.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/jackets/9.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/jackets/10.jpg",
    description:
        "Exercitation proident aliquip nostrud ullamco reprehenderit duis occaecat sunt nisi incididunt. Culpa est ut ex incididunt occaecat est consequat voluptate laboris mollit. Consequat labore in laboris ad adipisicing eiusmod eiusmod sunt. Velit anim est ipsum excepteur dolor nulla id ad id officia nisi laboris. Et duis esse nulla ut consectetur excepteur velit exercitation culpa. Mollit adipisicing fugiat velit occaecat id eiusmod quis ad veniam sint laboris nulla.",
    price: "100",
    productName: "İsim",
  ),
];

List<Product> shirts = [
  Product(
    image: "assets/images/shirts/1.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "100",
    productName: "Gri Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shirts/2.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "150",
    productName: "Sarı Gömlek",
  ),
  Product(
    image: "assets/images/shirts/3.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "125",
    productName: "Mavi Gömlek",
  ),
  Product(
    image: "assets/images/shirts/4.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "200",
    productName: "Kırmızı Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shirts/5.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "110",
    productName: "Sarı Gömlek",
  ),
  Product(
    image: "assets/images/shirts/6.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "80",
    productName: "Siyah Çizgili Gömlek",
  ),
  Product(
    image: "assets/images/shirts/7.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "77",
    productName: "Kırmızı Gömlek",
  ),
  Product(
    image: "assets/images/shirts/8.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shirts/9.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Kırmızı Gömlek",
  ),
  Product(
    image: "assets/images/shirts/10.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Çiçek Desen Gömlek",
  ),
  Product(
    image: "assets/images/shirts/11.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Salaş Gömlek",
  ),
];

List<Product> shoes = [
  Product(
    image: "assets/images/shoes/1.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "100",
    productName: "Mavi Spor Ayakkabı",
  ),
  Product(
    image: "assets/images/shoes/2.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Desenli Spor Ayakkabı",
  ),
  Product(
    image: "assets/images/shoes/3.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Sarı Spor Ayakkabı",
  ),
  Product(
    image: "assets/images/shoes/4.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Kırmızı Spor Ayakkabı",
  ),
  Product(
    image: "assets/images/shoes/5.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Kahverengi Spor Ayakkabı",
  ),
  Product(
    image: "assets/images/shoes/6.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shoes/7.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shoes/8.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shoes/9.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shoes/10.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shoes/11.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shoes/12.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
  Product(
    image: "assets/images/shoes/13.jpg",
    description:
        "Consectetur eu magna officia est officia et enim velit eu velit in excepteur. Consectetur dolor magna occaecat anim nisi ad magna dolore cupidatat ut labore nisi ullamco. Enim consequat aute duis ad eiusmod. Non minim fugiat tempor id ullamco eiusmod amet fugiat consequat reprehenderit aliquip.",
    price: "300",
    productName: "Siyah Kareli Gömlek",
  ),
];

List<Product> pants = [
  Product(
    image: "assets/images/pants/1.jpg",
    description:
        "Commodo adipisicing ex eu duis. Elit et do ullamco ea dolore consectetur consequat proident nulla consectetur eiusmod. Consequat excepteur sunt id ea. Labore aliquip incididunt pariatur et eu voluptate est consequat ex nulla commodo commodo.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/pants/2.jpg",
    description:
        "Commodo adipisicing ex eu duis. Elit et do ullamco ea dolore consectetur consequat proident nulla consectetur eiusmod. Consequat excepteur sunt id ea. Labore aliquip incididunt pariatur et eu voluptate est consequat ex nulla commodo commodo.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/pants/3.jpg",
    description:
        "Commodo adipisicing ex eu duis. Elit et do ullamco ea dolore consectetur consequat proident nulla consectetur eiusmod. Consequat excepteur sunt id ea. Labore aliquip incididunt pariatur et eu voluptate est consequat ex nulla commodo commodo.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/pants/4.jpg",
    description:
        "Commodo adipisicing ex eu duis. Elit et do ullamco ea dolore consectetur consequat proident nulla consectetur eiusmod. Consequat excepteur sunt id ea. Labore aliquip incididunt pariatur et eu voluptate est consequat ex nulla commodo commodo.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/pants/5.jpg",
    description:
        "Commodo adipisicing ex eu duis. Elit et do ullamco ea dolore consectetur consequat proident nulla consectetur eiusmod. Consequat excepteur sunt id ea. Labore aliquip incididunt pariatur et eu voluptate est consequat ex nulla commodo commodo.",
    price: "100",
    productName: "İsim",
  ),
  Product(
    image: "assets/images/pants/6.jpg",
    description:
        "Commodo adipisicing ex eu duis. Elit et do ullamco ea dolore consectetur consequat proident nulla consectetur eiusmod. Consequat excepteur sunt id ea. Labore aliquip incididunt pariatur et eu voluptate est consequat ex nulla commodo commodo.",
    price: "100",
    productName: "İsim",
  ),
];
