import 'package:flutter/material.dart';
import 'package:logdef/logdef.dart';
import 'package:logdef/sign_in.dart';

class DrawerBuilder extends StatelessWidget {
  const DrawerBuilder({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Logdef2_1.png"),
                      alignment: Alignment.topCenter)),
              child: Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: Row(
                  children: <Widget>[
                    RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      icon: Icon(Icons.person),
                      label: Text("Hesabım"),
                      color: Colors.blueGrey,
                    ),
                    Spacer(),
                    RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new LoginScreen()));
                      },
                      icon: Icon(Icons.person),
                      label: Text("Giriş Yap"),
                      color: Colors.blueGrey,
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Ana Sayfa'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Myapp2()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.menu),
                    title: Text('Kategoriler'),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Çok Satanlar'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Kampanyalar'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Süper Fırsatlar'),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.bubble_chart),
                    title: Text('Canlı Destek'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.bubble_chart),
                    title: Text('Geri Bildirim'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.bubble_chart),
                    title: Text('Yardım'),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
