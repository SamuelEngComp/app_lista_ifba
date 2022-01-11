import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao09/questao_09_form.dart';

class Questao09 extends StatefulWidget {
  

  @override
  _Questao09State createState() => _Questao09State();
}

class _Questao09State extends State<Questao09> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
      titulo: 'Questão 09',
      subTitulo: 'Faça um algoritmo que calcule e apresente o valor do volume de uma lata de óleo, dado seu raio e sua altura.',
      telaRedirecionar: Questao09Form(),
    );
  }
}