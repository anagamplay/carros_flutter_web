import 'package:flutter/material.dart';

class CarrosPage extends StatefulWidget {
  const CarrosPage({Key? key}) : super(key: key);

  @override
  State<CarrosPage> createState() => _CarrosPageState();
}

class _CarrosPageState extends State<CarrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Text('Carros'),
    );
  }
}
