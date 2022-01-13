import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

class Questao09Form extends StatefulWidget {

  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao09Form(
      {required this.enunciadoDaQuestao, 
      required this.nomeNumeroQuestao});



  @override
  _Questao09FormState createState() => _Questao09FormState();
}

class _Questao09FormState extends State<Questao09Form> {
  TextEditingController campoRaio = TextEditingController();
  TextEditingController campoAltura = TextEditingController();
  double volumeDaLata = 0;
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
                campoNumero: campoRaio,
                hintTexto: 'Raio',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: largura*0.8,
              child: CampoNumero(
                campoNumero: campoAltura,
                hintTexto: 'Altura',
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
                  Text('Resultado: $volumeDaLata'),
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
    if (campoRaio.text == null || campoAltura.text == null) {
      setState(() {});
    } else {
      setState(() {
        volumeDaLata = controller.volumeLataDeOleo(
            double.tryParse(campoRaio.text)!,
            double.tryParse(campoAltura.text)!);
      });
    }
  }
}
