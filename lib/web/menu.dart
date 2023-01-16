import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 1'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 2'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 3'),
        ),
      ],
    );
  }
}
