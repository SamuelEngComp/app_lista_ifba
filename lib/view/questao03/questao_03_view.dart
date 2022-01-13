import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao03/questao_03_form.dart';

class Questao03 extends StatefulWidget {
  @override
  _Questao03State createState() => _Questao03State();
}

class _Questao03State extends State<Questao03> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 03',
        subTitulo:
            'Dado o tamanho do raio de uma circunferência, calcular a área e o perímetro da mesma.',
        telaRedirecionar: Questao03Form(
          enunciadoDaQuestao:
              'Dado o tamanho do raio de uma circunferência, calcular a área e o perímetro da mesma.',
          nomeNumeroQuestao: 'Questão 03',
        ));
  }
}
