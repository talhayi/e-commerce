import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key key,
    @required this.scaffold,
    @required this.context,
    @required this.title,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffold;
  final BuildContext context;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            scaffold.currentState.openDrawer();
          }),
      title: Center(child: Text(title)),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, "/notification");
            }),
        IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, "/cart");
            }),
      ],
      expandedHeight: 125,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
