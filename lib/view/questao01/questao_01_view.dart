import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao01/questao_01_form.dart';
import 'package:flutter_application_1/view/questao01/questao_01_view.dart';

class Questao01 extends StatefulWidget {
  @override
  _Questao01State createState() => _Questao01State();
}

class _Questao01State extends State<Questao01> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 9.0,
      borderOnForeground: true,
      color: Colors.red,
      shadowColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Questao01Formulario()));
              },
            ),
            title: const Text(
              'Questão 01',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Dado o tamanho da base e da altura de um retângulo, calcular a sua área e o seu perímetro.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
