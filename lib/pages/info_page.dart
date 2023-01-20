import 'package:flutter/material.dart';
import 'dart:html' as html;

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _font(),
          _userAgente(),
        ],
      ),
    );
  }

  _font() {
    return Card(
      child: Column(
        children: <Widget>[
          Text(
              "Font Family: ${Theme.of(context).textTheme.bodyText2?.fontFamily}"),
          SizedBox(height: 10),
          Text("Default:   Flutter Web"),
          SizedBox(height: 10),
          Text("Oswald:   Flutter Web", style: TextStyle(fontFamily: 'Oswald')),
          SizedBox(height: 10),
          Text("Pacifico:   Flutter Web", style: TextStyle(fontFamily: 'Pacifico')),
          SizedBox(height: 10),
          Text("Sofia Sans:   Flutter Web", style: TextStyle(fontFamily: 'Sofia Sans')),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  _userAgente() {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Text('User agent: ${html.window.navigator.userAgent}'),
        ),
      ),
    );
  }
}
