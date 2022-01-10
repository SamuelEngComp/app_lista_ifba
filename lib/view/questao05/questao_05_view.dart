import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao05/questao_05_form.dart';

class Questao05 extends StatefulWidget {
  @override
  _Questao05State createState() => _Questao05State();
}

class _Questao05State extends State<Questao05> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Questao05Form()));
              },
            ),
            title: const Text(
              'Questão 05',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
                'Ler um número inteiro e exibir o seu sucessor.',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
