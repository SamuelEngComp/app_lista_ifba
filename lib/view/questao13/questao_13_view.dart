import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao13/questao_13_form.dart';

class Questao13 extends StatefulWidget {
  
  @override
  _Questao13State createState() => _Questao13State();
}

class _Questao13State extends State<Questao13> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
      titulo: 'Questão 13',
      subTitulo: 'Um circuito elétrico é composto de duas resistências R1 e R2 em paralelo, e ambas em' + 
                  'sequência de uma resistência R3. Faça um algoritmo para calcular a resistência' + 
                    'equivalente desse circuito.',
      telaRedirecionar: Questao13Form(
        nomeNumeroQuestao: 'Questão 13',
        enunciadoDaQuestao: 'Um circuito elétrico é composto de duas resistências R1 e R2 em paralelo, e ambas em' + 
                  'sequência de uma resistência R3. Faça um algoritmo para calcular a resistência' + 
                    'equivalente desse circuito.',
      ),
    );
  }
}