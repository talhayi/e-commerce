import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logdef/constants.dart';
import 'package:logdef/logdef.dart';
import 'package:http/http.dart' as http;

import 'notes.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool rememberMe = false;
  int _start = 1;
  String nameController;
  String lastNameController;
  String emailController;
  String passwordController;

  Timer timer;
  Future<List<Note>> fetchNotes(
      String firstName, String lastName, String email, String password) async {
    var _signUpUrl =
        'http://yazilimgunlukleri.com/e_commerce/sign_up.php?firstName=' +
            firstName +
            '&lastName=' +
            lastName +
            '&email=' +
            email +
            '&password=' +
            password;

    var response = await http.get(_signUpUrl);

    var notes = List<Note>();

    if (response.statusCode == 200) {
      var notesJson = json.decode(response.body);
      notes.add(Note.fromJson(notesJson));
    }
    return notes;
  }

  List<Note> _notes = List<Note>();
  List<Note> _notesForDisplay = List<Note>();

  kayitol(String firstName, String lastName, String email, String password) {
    fetchNotes(firstName, lastName, email, password).then((value) {
      setState(() {
        _notes.addAll(value);
        _notesForDisplay = _notes;
      });
    });
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
            if (_notesForDisplay[0].durum == "success") {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Myapp2()))
                  .then((value) => Navigator.pop(context));
            } else {
              _showMyDialog();
              print(_notesForDisplay[0].durum);
              _notesForDisplay = [];
              _notes = [];
            }
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.4, 0.7, 0.9],
                  colors: [],
                )),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kayıt Ol",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: "OpenSans",
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildName(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildLastName(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildEmailTF(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildPasswordTF(),
                      SizedBox(
                        height: 10.0,
                      ),
                      //_buildPasswordAgainTF(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildSignupBtn(),
                      _buildSignInBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Adı",
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: kPrimaryColor, fontFamily: "OpenSans"),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
              hintText: "Adınızı Giriniz",
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) => nameController = value,
          ),
        )
      ],
    );
  }

  Widget _buildLastName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Soyadı",
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: kPrimaryColor, fontFamily: "OpenSans"),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
              hintText: "Soyadınızı Giriniz",
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) => lastNameController = value,
          ),
        )
      ],
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "E mail",
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: kPrimaryColor, fontFamily: "OpenSans"),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: kPrimaryColor,
              ),
              hintText: "E mail'inizi giriniz",
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) => emailController = value,
          ),
        )
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Şifre",
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: kPrimaryColor, fontFamily: "OpenSans"),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              hintText: "Şİfrenizi Giriniz",
              hintStyle: kHintTextStyle,
            ),
            onChanged: (value) => passwordController = value,
          ),
        )
      ],
    );
  }

  // Widget _buildPasswordAgainTF() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Text(
  //         "Şifre Tekrar",
  //         style: kLabelStyle,
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Container(
  //         alignment: Alignment.centerLeft,
  //         decoration: kBoxDecorationStyle,
  //         height: 60.0,
  //         child: TextField(
  //           obscureText: true,
  //           style: TextStyle(color: kPrimaryColor, fontFamily: "OpenSans"),
  //           decoration: InputDecoration(
  //             border: InputBorder.none,
  //             contentPadding: EdgeInsets.only(top: 14.0),
  //             prefixIcon: Icon(
  //               Icons.lock,
  //               color: kPrimaryColor,
  //             ),
  //             hintText: "Şİfrenizi Tekrar Giriniz",
  //             hintStyle: kHintTextStyle,
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  Widget _buildSignupBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () async {
          if (nameController.isEmpty ||
              lastNameController.isEmpty ||
              emailController.isEmpty ||
              passwordController.isEmpty) {
            print("Alanlar boş bırakılamaz");
            return;
          } else {
            kayitol(nameController, lastNameController, emailController,
                passwordController);
            startTimer();
          }

          // Navigator.push(context,
          //     new MaterialPageRoute(builder: (context) => new Myapp2()));
        }, // => print("Login Button Pressed"),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        child: Text(
          "Kayıt Ol",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans"),
        ),
      ),
    );
  }

  Widget _buildSignInBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => new Myapp2()));
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: "Kaydın Var mı?",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: "  Giriş Yap",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        )
      ])),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Uyarı!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  "Maile Kayıtlı Başka Bir Kullanıcı Var",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          backgroundColor: Colors.black,
        );
      },
    );
  }
}
