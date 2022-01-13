import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao02/questao_02_form.dart';

class Questao02 extends StatefulWidget {
  @override
  _Questao02State createState() => _Questao02State();
}

class _Questao02State extends State<Questao02> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 02',
        subTitulo:
            'Dado o tamanho do lado de um quadrado, calcular a área e o perímetro do mesmo.',
        telaRedirecionar: Questao02Formulario(
          enunciadoQuestao:
              'Dado o tamanho do lado de um quadrado, calcular a área e o perímetro do mesmo.',
          nomeNumeroQuestao: 'Questão 02',
        ));
  }
}
