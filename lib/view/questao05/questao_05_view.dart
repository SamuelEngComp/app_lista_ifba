import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/card_tela_inicial.dart';
import 'package:flutter_application_1/view/questao05/questao_05_form.dart';

class Questao05 extends StatefulWidget {
  @override
  _Questao05State createState() => _Questao05State();
}

class _Questao05State extends State<Questao05> {
  @override
  Widget build(BuildContext context) {
    return CardTelaInicial(
        titulo: 'Questão 05',
        subTitulo: 'Ler um número inteiro e exibir o seu sucessor.',
        telaRedirecionar: Questao05Form());
  }
}
