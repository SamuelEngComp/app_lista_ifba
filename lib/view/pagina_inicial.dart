
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao01/questao_01_view.dart';
import 'package:flutter_application_1/view/questao02/questao_02_view.dart';


class PaginaInicial extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercicios IFBA'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Questao01(),
            Questao02(),
          Card(
            child: Text('Card 3'),
          ),
          Card(
            child: Text('Card 4'),
          ),
          Card(
            child: Text('Card 1'),
          ),
          Card(
            child: Text('Card 2'),
          ),
          Card(
            child: Text('FIM'),
          ),
          ],
        ),
      ),
    );
  }
}