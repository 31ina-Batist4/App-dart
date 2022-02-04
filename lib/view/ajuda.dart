import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                title: Text("Ajuda"),
              centerTitle: false,
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Este aplicativo tem o objetivo de listar"
                         " e pesquisar as siglas dos países."),
                  )
                ]
              ),
        ),
    );
  }
}
