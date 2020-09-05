import 'package:flutter/material.dart';

class AddToDrawerMenu extends StatelessWidget {
  const AddToDrawerMenu({
    Key key,
    this.text,
    this.routeName,
    this.iconName,
  }) : super(key: key);
  final String text;
  final String routeName;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(text, style: TextStyle(fontWeight: FontWeight.w900)),
        leading: iconName == null ? null : Icon(iconName),
        onTap: routeName == null
            ? () {}
            : () {
                Navigator.pushNamed(context, routeName);
              });
  }
}
