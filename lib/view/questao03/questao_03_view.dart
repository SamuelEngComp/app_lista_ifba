import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao03/questao_03_form.dart';

class Questao03 extends StatefulWidget {
  

  @override
  _Questao03State createState() => _Questao03State();
}

class _Questao03State extends State<Questao03> {
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
                              builder: (context) => Questao03Form()));
                        },
                    ),
                    title: Text('Questão 03'),
                    subtitle: Text('Dado o tamanho do raio de uma circunferência, calcular a área e o perímetro da mesma.'),
                  ),
                ],
              ),
            );
  }
}