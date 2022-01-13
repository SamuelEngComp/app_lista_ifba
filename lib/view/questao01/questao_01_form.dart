import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

import '../campo_numero.dart';

class Questao01Formulario extends StatefulWidget {
  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao01Formulario(
      {required this.enunciadoDaQuestao, required this.nomeNumeroQuestao});

  @override
  _Questao01FormularioState createState() => _Questao01FormularioState();
}

class _Questao01FormularioState extends State<Questao01Formulario> {
  TextEditingController campoBase = TextEditingController();
  TextEditingController campoAltura = TextEditingController();

  Controller controller = Controller();
  int valorAreaRetangulo = 0;
  int valorPerimetroRetangulo = 0;

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
                  enunciado: widget.enunciadoDaQuestao,
                ),
                Container(
                  width: largura * 0.8,
                  child: CampoNumero(
                    campoNumero: campoBase,
                    hintTexto: 'Base',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: largura * 0.8,
                  child: CampoNumero(
                    campoNumero: campoAltura,
                    hintTexto: 'Altura',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: ElevatedButton(
                      onPressed: checaValores, child: Text('Calcular')),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Resultado Area: $valorAreaRetangulo'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Resultado Perimetro: $valorPerimetroRetangulo'),
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
    if (campoBase.text == null || campoAltura.text == null) {
      setState(() {});
    } else {
      setState(() {
        valorAreaRetangulo = controller.areaRetangulo(
            int.tryParse(campoBase.text)!, int.tryParse(campoAltura.text)!);
        valorPerimetroRetangulo = controller.perimetroRetangulo(
            int.tryParse(campoBase.text)!, int.tryParse(campoAltura.text)!);
      });
    }
  }
}
