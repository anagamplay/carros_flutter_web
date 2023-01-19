import 'package:carros_flutter_web/app_model.dart';
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

        return Row(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.expand(width: 32),
              child: Icon(
                index == 0
                    ? FontAwesomeIcons.house
                    : FontAwesomeIcons.chevronRight,
                size: 20,
              ),
            ),
            Text(
              info.title,
              style: TextStyle(fontSize: 17),
            )
          ],
        );
      },
    );
  }
}
