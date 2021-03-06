import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

import '../campo_numero.dart';

class Questao13Form extends StatefulWidget {

  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao13Form(
      {required this.enunciadoDaQuestao, 
      required this.nomeNumeroQuestao});

  
  

  @override
  _Questao13FormState createState() => _Questao13FormState();
}

class _Questao13FormState extends State<Questao13Form> {

  TextEditingController resistor01 = TextEditingController();
  TextEditingController resistor02 = TextEditingController();
  TextEditingController resistor03 = TextEditingController();
  
  double resistenciaEquivalente = 0;
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

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: largura * 0.8,
                      child: const Text('Resistores em paralelo'),
                    ),
                  ),

                  Container(
                    width: largura * 0.8,
                    child: CampoNumero(
                      campoNumero: resistor01,
                      hintTexto: 'ResistĂȘncia 1',
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: largura * 0.8,
                    child: CampoNumero(
                      campoNumero: resistor02,
                      hintTexto: 'ResistĂȘncia 2',
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Container(
                      width: largura * 0.8,
                      child: const Text('Resistor em sĂ©rie'),
                  ),
                   ),

                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: largura * 0.8,
                    child: CampoNumero(
                      campoNumero: resistor03,
                      hintTexto: 'ResistĂȘncia 3',
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: ElevatedButton(
                    onPressed: checaValores,
                      child: Text('Calcular'),
              ),
            ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Resultado: $resistenciaEquivalente'),
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
    if (resistor01.text == null || resistor02.text == null || resistor03.text == null) {
      setState(() {});
    } else {
      setState(() {
        resistenciaEquivalente = controller.resistenciaEquivalente(
          resistor1: double.tryParse(resistor01.text)!, 
          resistor2: double.tryParse(resistor02.text)!, 
          resistor3: double.tryParse(resistor03.text)!);
      });
    }
  }



}