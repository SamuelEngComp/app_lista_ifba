import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

class Questao07Form extends StatefulWidget {

  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao07Form(
      {required this.enunciadoDaQuestao, 
      required this.nomeNumeroQuestao});



  @override
  _Questao07FormState createState() => _Questao07FormState();
}

class _Questao07FormState extends State<Questao07Form> {
  TextEditingController idadeEmDias = TextEditingController();
  Controller controller = Controller();
  String emDesenvolvimento = 'Em desenvolvimento';

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
              width: largura*0.8,
              child: CampoNumero(
                campoNumero: idadeEmDias, 
                hintTexto: 'Idade em dias',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: ElevatedButton(onPressed: checaValores, child: Text('Calcular')),
            ),
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
