import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logdef/constants.dart';
import 'package:logdef/logdef.dart';
import 'package:logdef/sign_up.dart';
import 'notes.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  int _start = 1;
  String emailController;
  String passwordController;
//  bool tf;
  Timer timer;
  Future<List<Note>> fetchNotes(String email, String password) async {
    var _girisurl =
        'http://yazilimgunlukleri.com/e_commerce/sign_in.php?email=' +
            email +
            '&password=' +
            password;
    var response = await http.get(_girisurl);

    var notes = List<Note>();

    if (response.statusCode == 200) {
      var notesJson = json.decode(response.body);

      notes.add(Note.fromJson(notesJson));
    }
    return notes;
  }

  List<Note> _notes = List<Note>();
  List<Note> _notesForDisplay = List<Note>();

  girisDene(String email, String password) {
    fetchNotes(email, password).then((value) {
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
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Giriş Yap",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: "OpenSans",
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      _buildRememberMeCheckBox(),
                      _buildLoginBtn(),
                      _buildSignInWithText(),
                      _buildSocialBtnRow(),
                      _buildSignupBtn(),
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

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Password Button Pressed"),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          "Şifrenizi mi Unuttunuz?",
          style: kLabelStyle,
        ),
      ),
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

  Widget _buildRememberMeCheckBox() {
    return Container(
      height: 20.0,
      child: Row(
        children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.green),
              child: Checkbox(
                value: rememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value;
                  });
                },
              )),
          Text(
            "Beni Hatırla",
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () async {
          if (emailController.isEmpty || passwordController.isEmpty) {
            print("Alanlar boş bırakılamaz");
            return;
          } else {
            girisDene(emailController, passwordController);
            startTimer();
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        child: Text(
          "Giriş Yap",
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

  Widget _buildSignInWithText() {
    return Column(
      children: [
        Text(
          "- Veya -",
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildSocialBtn(() => print("Login with Facebook"),
              AssetImage("assets/logos/facebook.jpg")),
          _buildSocialBtn(() => print("Login with Google"),
              AssetImage("assets/logos/google.jpg")),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new SignUpScreen()));
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: "Hesabınız Yok Mu?",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: "  Kayıt Ol",
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
                  "EMAİL/PASSWORD HATALI!",
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
