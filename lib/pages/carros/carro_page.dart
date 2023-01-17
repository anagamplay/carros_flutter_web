import 'package:carros_flutter_web/pages/carros/carro.dart';
import 'package:flutter/material.dart';

class CarroPage extends StatelessWidget {

  Carro carro;

  CarroPage(this.carro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("${carro.nome}"),
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
                carro.urlFoto ?? "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Rolls_Royce_Phantom.png"),
          ),
          Text(
            carro.nome ?? "",
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
