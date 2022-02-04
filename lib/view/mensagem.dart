import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


mixin Mensagem {

  void showMensagem(String msg, context, {int duration, int gravity}) {
     Toast.show(msg, context, duration: duration?? Toast.LENGTH_LONG,
          gravity: gravity?? Toast.BOTTOM, backgroundRadius: 3.0,
          backgroundColor: Colors.lightBlue, textColor: Colors.black);
  }

}
