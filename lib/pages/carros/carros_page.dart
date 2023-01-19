import 'package:carros_flutter_web/app_model.dart';
import 'package:carros_flutter_web/pages/carros/carro.dart';
import 'package:carros_flutter_web/pages/carros/carro_page.dart';
import 'package:carros_flutter_web/pages/carros/carros_api.dart';
import 'package:carros_flutter_web/utils/web_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarrosPage extends StatefulWidget {
  const CarrosPage({Key? key}) : super(key: key);

  @override
  State<CarrosPage> createState() => _CarrosPageState();
}

class _CarrosPageState extends State<CarrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Carro>>(
          future: CarrosApi.getCarros(context),
          builder: (context, snapshot) {
            if(!snapshot.hasData) {
              return Center(child: CircularProgressIndicator(),);
            }

            List<Carro> carros = snapshot.data!;

            return _listView(carros);
          },
      ),
    );
  }

  _listView(List<Carro> carros) {
    return GridView.builder(
      itemCount: carros.length,
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

            Carro carro = carros[index];

            return InkWell(
              onTap: () => _onClickCarro(carro),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 350,
                        maxHeight: 150,
                      ),
                      child: Image.network(
                          carro.urlFoto ?? "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Rolls_Royce_Phantom.png"),
                    ),
                    Text(
                      carro.nome ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  _onClickCarro(Carro carro) {
    AppModel app = Provider.of<AppModel>(context, listen: false);
    app.push(PageInfo(carro.nome!, CarroPage(carro)));
  }
}
