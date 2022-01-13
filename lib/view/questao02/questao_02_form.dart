import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/questao02/questao_02_view.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

class Questao02Formulario extends StatefulWidget {
  late String enunciadoQuestao;
  late String nomeNumeroQuestao;

  Questao02Formulario(
      {required this.enunciadoQuestao, required this.nomeNumeroQuestao});

  @override
  _Questao02FormularioState createState() => _Questao02FormularioState();
}

class _Questao02FormularioState extends State<Questao02Formulario> {
  Controller controller = Controller();

  TextEditingController ladoDoQuadrado = TextEditingController();
  int valorAreaQuadrado = 0;
  int valorPerimetroQuadrado = 0;

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
                  enunciado: widget.enunciadoQuestao,
                ),
                Container(
                  width: largura * 0.8,
                  child: CampoNumero(
                      campoNumero: ladoDoQuadrado,
                      hintTexto: 'Lado do quadrado'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: ElevatedButton(
                      onPressed: checaValores, child: Text('Calcular')),
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
