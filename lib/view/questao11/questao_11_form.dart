import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';

import '../campo_numero.dart';
import '../enunciado_questao.dart';

class Questao11Form extends StatefulWidget {

  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao11Form(
      {required this.enunciadoDaQuestao, 
      required this.nomeNumeroQuestao});

  

  @override
  _Questao11FormState createState() => _Questao11FormState();
}

class _Questao11FormState extends State<Questao11Form> {

  TextEditingController campoNota01 = TextEditingController();
  TextEditingController campoNota02 = TextEditingController();
  TextEditingController campoNota03 = TextEditingController();
  TextEditingController campoNota04 = TextEditingController();

  double notaSemestral = 0;
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
                      campoNumero: campoNota01,
                      hintTexto: 'nota 1',
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: largura * 0.8,
                    child: CampoNumero(
                      campoNumero: campoNota02,
                      hintTexto: 'nota 2',
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: largura * 0.8,
                    child: CampoNumero(
                      campoNumero: campoNota03,
                      hintTexto: 'nota 3',
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: largura * 0.8,
                    child: CampoNumero(
                      campoNumero: campoNota04,
                      hintTexto: 'nota 4',
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
                  Text('Resultado: $notaSemestral'),
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
    if (campoNota01.text == null
    || campoNota02.text == null
    || campoNota03.text == null
    || campoNota04.text == null) {
      setState(() {});
    } else {
      setState(() {
        notaSemestral = controller.notaSemestre(
          nota01: double.tryParse(campoNota01.text)!, 
          nota02: double.tryParse(campoNota02.text)!, 
          nota03: double.tryParse(campoNota03.text)!, 
          nota04: double.tryParse(campoNota04.text)!);
      });
    }
  }


}