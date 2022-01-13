import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

import '../campo_numero.dart';

class Questao10Form extends StatefulWidget {

  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao10Form(
      {required this.enunciadoDaQuestao, 
      required this.nomeNumeroQuestao});


  @override
  _Questao10FormState createState() => _Questao10FormState();
}

class _Questao10FormState extends State<Questao10Form> {
  TextEditingController campoNumeroDecimal = TextEditingController();
  int numeroBinario = 0;
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
                      campoNumero: campoNumeroDecimal,
                      hintTexto: 'número decimal',
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
                  Text('Resultado: $numeroBinario'),
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
