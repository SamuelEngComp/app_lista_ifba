import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao12/questao_12_form.dart';

class Questao12 extends StatefulWidget {
  

  @override
  _Questao12State createState() => _Questao12State();
}

class _Questao12State extends State<Questao12> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
      titulo: 'Questão 12',
      subTitulo: 'Faça um algoritmo que transforme uma velocidade fornecida em m/s pelo usuário para Km/h. Para tal, multiplique o valor em m/s por 3,6.',
      telaRedirecionar: Questao12Form(
        nomeNumeroQuestao: 'Questão 12',
        enunciadoDaQuestao: 'Faça um algoritmo que transforme uma velocidade fornecida em m/s pelo usuário para Km/h. Para tal, multiplique o valor em m/s por 3,6.',
      ),
    );
  }
}