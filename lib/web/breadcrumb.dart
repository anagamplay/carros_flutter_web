import 'package:carros_flutter_web/app_model.dart';
import 'package:carros_flutter_web/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

    return ListView.builder(
      itemCount: app.pages.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        PageInfo info = app.pages[index];

        return InkWell(
          onTap: () => _OnClickPage(index),
          child: Row(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.expand(width: 32),
                child: Icon(
                  index == 0
                      ? FontAwesomeIcons.house
                      : FontAwesomeIcons.chevronRight,
                  size: 20,
                  color: AppColors.blue,
                ),
              ),
              Text(
                info.title,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        );
      },
    );
  }

  _OnClickPage(int index) {
    AppModel app = Provider.of<AppModel>(context, listen: false);

    if(index == 0) {
      app.popAll();
    } else {
      app.popTo(index);
    }
  }
}
