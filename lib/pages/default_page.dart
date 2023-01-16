import 'package:carros_flutter_web/utils/debug_widget_size.dart';
import 'package:carros_flutter_web/utils/web_utils.dart';
import 'package:flutter/material.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5),
      itemBuilder: (context, index) {
        return LayoutBuilder(
          builder: (context, constraints) {
            double fontSize = size(
              constraints.maxWidth * 0.07,
              min: 8,
              max: Theme.of(context).textTheme.bodyText2!.fontSize!,
            );

            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 250,
                    ),
                    child: Image.network(
                        "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Rolls_Royce_Phantom.png"),
                  ),
                  Text(
                    " $fontSize Rolls Royce Phantom Leozim",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
