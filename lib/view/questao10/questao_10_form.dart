import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao10/questao_10_controller.dart';

class Questao10Form extends StatefulWidget {
  @override
  _Questao10FormState createState() => _Questao10FormState();
}

class _Questao10FormState extends State<Questao10Form> {
  TextEditingController campoNumeroDecimal = TextEditingController();
  int numeroBinario = 0;
  Questao10Controller controller = Questao10Controller();

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
                controller: campoNumeroDecimal,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'número decimal',
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
                  Text('Resultado: $numeroBinario'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checaValores() {
    if (campoNumeroDecimal.text == null) {
      setState(() {});
    } else {
      setState(() {
        numeroBinario = controller.conversorDecimalParaBinario(
            numeroDecimal: int.tryParse(campoNumeroDecimal.text)!);
      });
    }
  }
}
