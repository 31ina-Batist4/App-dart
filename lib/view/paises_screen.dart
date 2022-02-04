import 'package:flutter/material.dart';
import 'package:sigla_paises_app/view/menu.dart';
import 'package:sigla_paises_app/view/paises_dados.dart';
import 'package:sigla_paises_app/service/requisicao.dart';
import 'package:flutter/cupertino.dart';

class PaisesScreen extends StatelessWidget {

  final String pais;

  PaisesScreen({this.pais = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siglas dos Países"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          PaisesScreen(pais: "")));
            },
          )
        ],
      ),
      body:  PaisesDados(pais: pais),
      drawer: Menu(),
    );
  }
}
