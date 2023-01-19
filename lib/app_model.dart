import 'package:carros_flutter_web/pages/default_page.dart';
import 'package:flutter/cupertino.dart';

class PageInfo {
  String title;
  Widget page;

  PageInfo(this.title, this.page);

  @override
  String toString() {
    return title;
  }
}

class AppModel extends ChangeNotifier {

  List<PageInfo> pages = [];

  PageInfo defaultPage = PageInfo("Home", DefaultPage());

  AppModel() {
    pages.add(defaultPage);
  }

  push(PageInfo page, {bool replace = false}) {
    if(replace) {
      pages.clear();

      pages.add(defaultPage);
    }

    if(page.title != "Home") {
      pages.add(page);
    }

    notifyListeners();
  }

  pop() {
    pages.removeLast();

    notifyListeners();
  }
}