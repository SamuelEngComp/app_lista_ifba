import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao07/questao_07_controller.dart';

class Questao07Form extends StatefulWidget {
  @override
  _Questao07FormState createState() => _Questao07FormState();
}

class _Questao07FormState extends State<Questao07Form> {
  TextEditingController idadeEmDias = TextEditingController();
  Questao07Controller controller = Questao07Controller();
  String emDesenvolvimento = 'Em desenvolvimento';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digitar Valor'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: idadeEmDias,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Digite sua idade em dias',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: checaValores, child: Text('Calcular')),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Resultado datas: $emDesenvolvimento'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checaValores() {
    if (idadeEmDias.text == null) {
      setState(() {});
    } else {
      setState(() {
        controller.questaoEmDesenvolvimento();
      });
    }
  }
}
