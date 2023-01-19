import 'package:carros_flutter_web/app_model.dart';
import 'package:carros_flutter_web/pages/carros/carro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarroPage extends StatefulWidget {

  Carro carro;

  CarroPage(this.carro);

  @override
  State<CarroPage> createState() => _CarroPageState();
}

class _CarroPageState extends State<CarroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("${widget.carro.nome}"),
        ),
        body: _body(),
    );
  }

  _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 350,
              maxHeight: 150,
            ),
            child: Image.network(
                widget.carro.urlFoto ?? "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Rolls_Royce_Phantom.png"),
          ),
          Text(
            widget.carro.nome ?? "",
            overflow: TextOverflow.ellipsis,
          ),
          ElevatedButton(
            child: Text("Voltar"),
            onPressed: _onClickVoltar,
          )
        ],
      ),
    );
  }

  void _onClickVoltar() {
    AppModel app = Provider.of<AppModel>(context, listen: false);
    app.pop();
  }
}
