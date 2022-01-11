import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao06/questao_06_controller.dart';

class Questao06Form extends StatefulWidget {
  @override
  _Questao06FormState createState() => _Questao06FormState();
}

class _Questao06FormState extends State<Questao06Form> {
  TextEditingController primeiroNumeroDigitado = TextEditingController();
  TextEditingController segundoNumeroDigitado = TextEditingController();

  int restoDivisao = 0;
  double quociente = 0;

  Questao06Controller controller = Questao06Controller();

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
                controller: primeiroNumeroDigitado,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Digite o primeiro número',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: segundoNumeroDigitado,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Digite o segundo número',
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
                  Text('Resultado Quociente: $quociente'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Resultado Resto: $restoDivisao'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checaValores() {
    if (primeiroNumeroDigitado.text == null ||
        segundoNumeroDigitado.text == null) {
      setState(() {});
    } else {
      setState(() {
        restoDivisao = controller.restoDaDivisaoEntreDoisNumeros(
            int.tryParse(primeiroNumeroDigitado.text)!,
            int.tryParse(segundoNumeroDigitado.text)!);

        quociente = controller.quocienteEntreDoisNumeros(
            int.tryParse(primeiroNumeroDigitado.text)!,
            int.tryParse(segundoNumeroDigitado.text)!);
      });
    }
  }
}
