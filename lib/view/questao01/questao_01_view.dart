import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao01/questao_01_form.dart';

class Questao01 extends StatefulWidget {
  @override
  _Questao01State createState() => _Questao01State();
}

class _Questao01State extends State<Questao01> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 01',
        subTitulo:
            'Dado o tamanho da base e da altura de um retângulo, calcular a sua área e o seu perímetro.',
        telaRedirecionar: Questao01Formulario());
  }
}
