import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao02/questao_02_form.dart';

class Questao02 extends StatefulWidget {
  @override
  _Questao02State createState() => _Questao02State();
}

class _Questao02State extends State<Questao02> {
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
                        builder: (context) => Questao02Formulario()));
              },
            ),
            title: const Text('Questão 02',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: const Text(
                'Dado o tamanho do lado de um quadrado, calcular a área e o perímetro do mesmo.',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
