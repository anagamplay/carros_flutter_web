import 'package:carros_flutter_web/pages/carros/carros_page.dart';
import 'package:flutter/cupertino.dart';

class AppModel extends ChangeNotifier {

  List<Widget> pages = [];

  AppModel() {
    pages.add(CarrosPage());
  }

  push(Widget page, {bool replace = false}) {
    if(replace) {
      pages.clear();
    }

    pages.add(page);

    notifyListeners();
  }

  pop() {
    pages.removeLast();

    notifyListeners();
  }
}