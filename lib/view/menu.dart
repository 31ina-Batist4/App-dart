import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sigla_paises_app/view/paises_screen.dart';
import 'ajuda.dart';
import 'mensagem.dart';

  class Menu extends StatelessWidget  with Mensagem {

   final TextEditingController search = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Container(
          child: SafeArea(
            child: Drawer(
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 100.0,
                    child: Text ("Menu", style: TextStyle(fontSize: 20.0,
                       color: Colors.white, fontWeight: FontWeight.w400),) ,
                  ),
                  ListTile(
                    title: Text("Pesquisar"),
                    leading: Icon(Icons.search),
                    onTap: () => {
                      Navigator.pop(context),
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => SimpleDialog(
                                  title: Text("Digite o nome do país"),
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: TextField(
                                        controller: search,
                                        onTap: () => search.clear(),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              showMensagem(
                                                  "Operação Cancelada!", context);
                                            },
                                            child: Text("Cancelar")),
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.of(context).push(MaterialPageRoute(
                                                      builder: (BuildContext context) =>
                                                          PaisesScreen(pais: search.text)));
                                              showMensagem("Pesquisa realizada para o pais ${search.text}.", context);
                                            },
                                            child: Text("OK", style: TextStyle(color: Colors.blue),)),
                                      ],
                                    ),
                                  ]
                              )
                      ),
                      ListTile(
                        title: Text("Ajuda"),
                        leading: Icon(Icons.help),
                        onTap:  () {
                          Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Ajuda()));
                        },
                      ),},
                  ),
                ]
              ),
              ),
            ),
       );
      }
    }

