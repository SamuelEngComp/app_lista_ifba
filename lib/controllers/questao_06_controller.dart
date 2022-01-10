import 'package:flutter/material.dart';

class Questao06Controller {
  int restoDaDivisaoEntreDoisNumeros(int numero1, int numero2) =>
      numero1 % numero2;

  double quocienteEntreDoisNumeros(int numero1, int numero2) {
/*
    if (numero2 == 0) {
      AlertDialog(
        title: const Text('Divisão indeterminada'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Pedimos que altere o segundo número'),
              Text('Qualquer dúvida, estamos a disposição?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
    */

    return numero1 / numero2;
  }
}
