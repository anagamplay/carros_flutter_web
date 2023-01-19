import 'package:carros_flutter_web/app_model.dart';
import 'package:carros_flutter_web/colors.dart';
import 'package:carros_flutter_web/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _theme(),
        home: HomePage(),
      ),
    );
  }

  _theme() {
    return ThemeData(
      primaryColor: AppColors.blue,
      splashColor: Colors.blue,
      hoverColor: Colors.blue[100],
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          fontSize: 22,
          color: AppColors.blue,
        ),
      ),
      primarySwatch: Colors.blue,
    );
  }
}
