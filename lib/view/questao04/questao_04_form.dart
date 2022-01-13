import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

class Questao04Form extends StatefulWidget {
  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao04Form(
      {required this.enunciadoDaQuestao, required this.nomeNumeroQuestao});

  @override
  _Questao04FormState createState() => _Questao04FormState();
}

class _Questao04FormState extends State<Questao04Form> {
  Controller controller = Controller();
  double lado01 = 0;
  double lado02 = 0;
  double lado03 = 0;
  double perimetro = 0;
  TextEditingController lado01Digitado = TextEditingController();
  TextEditingController lado02Digitado = TextEditingController();
  TextEditingController lado03Digitado = TextEditingController();

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
                EnunciadoQuestao(enunciado: widget.enunciadoDaQuestao),
                Container(
                  width: largura * 0.8,
                  child: CampoNumero(
                    campoNumero: lado01Digitado,
                    hintTexto: 'Lado 1',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: largura * 0.8,
                  child: CampoNumero(
                    campoNumero: lado02Digitado,
                    hintTexto: 'Lado 2',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: largura * 0.8,
                  child: CampoNumero(
                    campoNumero: lado03Digitado,
                    hintTexto: 'Lado 3',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: ElevatedButton(
                      onPressed: checaValores, child: Text('Calcular')),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Resultado Perimetro: $perimetro'),
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
    if (lado01Digitado.text == null ||
        lado02Digitado.text == null ||
        lado03Digitado.text == null) {
      setState(() {});
    } else {
      setState(() {
        lado01 = double.tryParse(lado01Digitado.text)!;
        lado02 = double.tryParse(lado02Digitado.text)!;
        lado03 = double.tryParse(lado03Digitado.text)!;
        perimetro = controller.perimetroTriangulo(lado01, lado02, lado03);
      });
    }
  }
}
