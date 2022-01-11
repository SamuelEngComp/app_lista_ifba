import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao01/questao_01_view.dart';
import 'package:flutter_application_1/view/questao02/questao_02_view.dart';
import 'package:flutter_application_1/view/questao03/questao_03_view.dart';
import 'package:flutter_application_1/view/questao04/questao_04_view.dart';
import 'package:flutter_application_1/view/questao05/questao_05_view.dart';
import 'package:flutter_application_1/view/questao06/questao_06_view.dart';
import 'package:flutter_application_1/view/questao07/questao_07_view.dart';
import 'package:flutter_application_1/view/questao08/questao_08_view.dart';
import 'package:flutter_application_1/view/questao09/questao_09_view.dart';
import 'package:flutter_application_1/view/questao10/questao_10_view.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.work),
        centerTitle: true,
        title: const Text(
          'Exercicios IFBA',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //color: Colors.red,
        child: ListView(
          children: [
            Questao01(),
            Questao02(),
            Questao03(),
            Questao04(),
            Questao05(),
            Questao06(),
            Questao07(),
            Questao08(),
            Questao09(),
            Questao10(),
          ],
        ),
      ),
    );
  }
}
