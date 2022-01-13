import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao10/questao_10_form.dart';

class Questao10 extends StatefulWidget {
  @override
  _Questao10State createState() => _Questao10State();
}

class _Questao10State extends State<Questao10> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questao 10',
        subTitulo:
            'Converter um inteiro informado menor que 32 para sua representação em binário',
        telaRedirecionar: Questao10Form(
          enunciadoDaQuestao: 'Converter um inteiro informado menor que 32 para sua representação em binário', 
          nomeNumeroQuestao: 'Questao 10',));
  }
}
