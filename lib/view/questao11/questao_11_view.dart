import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao11/questao_11_form.dart';

class Questao11 extends StatefulWidget {


  @override
  _Questao11State createState() => _Questao11State();
}

class _Questao11State extends State<Questao11> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
      titulo: 'Questão 11', 
      subTitulo: 'Faça um algoritmo para calcular a nota semestral de um aluno. A nota semestral é obtida pela média aritmética entre a nota de 2 bimestres. Cada nota de bimestre é composta por 2 notas de provas.', 
      telaRedirecionar: Questao11Form(
        enunciadoDaQuestao: 'Faça um algoritmo para calcular a nota semestral de um aluno. A nota semestral é obtida pela média aritmética entre a nota de 2 bimestres. Cada nota de bimestre é composta por 2 notas de provas.', 
        nomeNumeroQuestao: 'Questão 11',));
  }
}