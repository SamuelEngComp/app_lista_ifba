import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

import 'package:flutter_application_1/view/questao01/questao_01_view.dart';

class Questao08Form extends StatefulWidget {

   String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao08Form(
      {required this.enunciadoDaQuestao, 
      required this.nomeNumeroQuestao});




  @override
  _Questao08FormState createState() => _Questao08FormState();
}

class _Questao08FormState extends State<Questao08Form> {
  TextEditingController temperatura = TextEditingController();
  double grausCelsius = 0;
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nomeNumeroQuestao),
      ),
      body: Container(
        width: largura,
        height: altura,
        child: ListView(
          
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                EnunciadoQuestao(
                  enunciado: widget.enunciadoDaQuestao),

                  Container(
              width: largura * 0.8,
              child: CampoNumero(
                campoNumero: temperatura,
                hintTexto: 'Digite a temperatura F -> C',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: ElevatedButton(onPressed: checaValores, child: Text('Calcular')),
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
