import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao06/questao_06_form.dart';

class Questao06 extends StatefulWidget {
  @override
  _Questao06State createState() => _Questao06State();
}

class _Questao06State extends State<Questao06> {
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
                    MaterialPageRoute(builder: (context) => Questao06Form()));
              },
            ),
            title: const Text(
              'Questão 06',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
                'Ler dois números inteiros e exibir o quociente e o resto da divisão inteira entre eles.',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
