import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao07/questao_07_form.dart';

class Questao07 extends StatefulWidget {
  @override
  _Questao07State createState() => _Questao07State();
}

class _Questao07State extends State<Questao07> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 07',
        subTitulo:
            'Solicitar a idade de uma pessoa em dias e informar na tela a idade em anos, meses e dias.',
        telaRedirecionar: Questao07Form());
  }
}
