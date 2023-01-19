import 'package:carros_flutter_web/app_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BreadCrumb extends StatefulWidget {
  const BreadCrumb({Key? key}) : super(key: key);

  @override
  State<BreadCrumb> createState() => _BreadCrumbState();
}

class _BreadCrumbState extends State<BreadCrumb> {
  @override
  Widget build(BuildContext context) {

    AppModel app = Provider.of<AppModel>(context);

    return Text(app.pages.toString());
  }
}
