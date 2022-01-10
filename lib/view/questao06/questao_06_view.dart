import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao06/questao_06_form.dart';

class Questao06 extends StatefulWidget {
  @override
  _Questao06State createState() => _Questao06State();
}

class _Questao06State extends State<Questao06> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 06',
        subTitulo:
            'Ler dois números inteiros e exibir o quociente e o resto da divisão inteira entre eles.',
        telaRedirecionar: Questao06Form());
  }
}
