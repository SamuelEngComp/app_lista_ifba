import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao08/questao_08_controller.dart';
import 'package:flutter_application_1/view/questao01/questao_01_view.dart';

class Questao08Form extends StatefulWidget {
  @override
  _Questao08FormState createState() => _Questao08FormState();
}

class _Questao08FormState extends State<Questao08Form> {
  TextEditingController temperatura = TextEditingController();
  double grausCelsius = 0;
  Questao08Controller controller = Questao08Controller();

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
                controller: temperatura,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Digite a temperatura F -> C',
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
                  Text('Resultado: $grausCelsius °C'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checaValores() {
    if (temperatura.text == null) {
      setState(() {});
    } else {
      setState(() {
        grausCelsius =
            controller.fahrenheitToCelsius(double.tryParse(temperatura.text)!);
      });
    }
  }
}
