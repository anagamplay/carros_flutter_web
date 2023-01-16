import 'package:carros_flutter_web/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _theme(),
      home: HomePage(),
    );
  }

  _theme() {
    return ThemeData(
      splashColor: Colors.blue,
      hoverColor: Colors.blue[100],
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          fontSize: 20,
        ),
      ),
      primarySwatch: Colors.blue,
    );
  }
}
