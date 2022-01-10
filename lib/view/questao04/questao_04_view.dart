import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao04/questao_04_form.dart';

class Questao04 extends StatefulWidget {
  @override
  _Questao04State createState() => _Questao04State();
}

class _Questao04State extends State<Questao04> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 04',
        subTitulo:
            'Dado os três lados de um triângulo determinar o perímetro do mesmo.',
        telaRedirecionar: Questao04Form());
  }
}
