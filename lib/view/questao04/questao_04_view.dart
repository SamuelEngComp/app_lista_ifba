import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao04/questao_04_form.dart';

class Questao04 extends StatefulWidget {
  

  @override
  _Questao04State createState() => _Questao04State();
}

class _Questao04State extends State<Questao04> {
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
                      icon: Icon(Icons.add),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Questao04Form()));
                        },
                    ),
                    title: Text('Questão 04'),
                    subtitle: Text('Dado os três lados de um triângulo determinar o perímetro do mesmo'),
                  ),
                ],
              ),
            );
  }
}