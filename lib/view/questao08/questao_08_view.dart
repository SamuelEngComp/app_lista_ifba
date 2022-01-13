import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao08/questao_08_form.dart';

class Questao08 extends StatefulWidget {
  @override
  _Questao08State createState() => _Questao08State();
}

class _Questao08State extends State<Questao08> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 08',
        subTitulo: 'Dado que a fórmula para conversão de Fahrenheit ' +
            'para Celsius é C = 5/9 (F – 32), leu um valor de temperatura em Fahrenheit e exibi-lo em Celsius',
        telaRedirecionar: Questao08Form(
          enunciadoDaQuestao: 'Dado que a fórmula para conversão de Fahrenheit' +
            'para Celsius é C = 5/9 (F – 32), leia um valor de temperatura em Fahrenheit e exibi-lo em Celsius', 
          nomeNumeroQuestao: 'Questão 08',));
  }
}
