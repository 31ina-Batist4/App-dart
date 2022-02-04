import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigla_paises_app/view/paises_screen.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Siglas dos Países',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaisesScreen(),
    );
  }
}

