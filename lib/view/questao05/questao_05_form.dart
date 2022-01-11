import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao05/questao_05_controller.dart';

class Questao05Form extends StatefulWidget {
  @override
  _Questao05FormState createState() => _Questao05FormState();
}

class _Questao05FormState extends State<Questao05Form> {
  int proximoNumero = 0;
  TextEditingController numeroDoUsuario = TextEditingController();
  Questao05Controller controller = Questao05Controller();

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
                controller: numeroDoUsuario,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Digite o número',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: checaValores, child: Text('Calcular')),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text('Resultado: $proximoNumero'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checaValores() {
    if (numeroDoUsuario.text == null) {
      setState(() {});
    } else {
      setState(() {
        proximoNumero =
            controller.numeroSucessor(int.tryParse(numeroDoUsuario.text)!);
      });
    }
  }
}
