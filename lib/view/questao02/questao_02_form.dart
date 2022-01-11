import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao02/questao_02_controller.dart';
import 'package:flutter_application_1/view/questao02/questao_02_view.dart';

class Questao02Formulario extends StatefulWidget {
  @override
  _Questao02FormularioState createState() => _Questao02FormularioState();
}

class _Questao02FormularioState extends State<Questao02Formulario> {
  Questao02Controller controller = Questao02Controller();

  TextEditingController ladoDoQuadrado = TextEditingController();
  int valorAreaQuadrado = 0;
  int valorPerimetroQuadrado = 0;

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
                controller: ladoDoQuadrado,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Digite o lado do quadrado',
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
                  Text('Resultado Area: $valorAreaQuadrado'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Resultado Perimetro: $valorPerimetroQuadrado'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checaValores() {
    if (ladoDoQuadrado.text == null) {
      setState(() {});
    } else {
      setState(() {
        valorAreaQuadrado =
            controller.areaQuadrado(int.tryParse(ladoDoQuadrado.text)!);
        valorPerimetroQuadrado =
            controller.perimetroQuadrado(int.tryParse(ladoDoQuadrado.text)!);
      });
    }
  }
}
