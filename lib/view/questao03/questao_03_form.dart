import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';
import 'package:flutter_application_1/view/questao03/questao_03_view.dart';

class Questao03Form extends StatefulWidget {
  late String enunciadoDaQuestao;
  late String nomeNumeroQuestao;

  Questao03Form(
      {required this.enunciadoDaQuestao, required this.nomeNumeroQuestao});

  @override
  _Questao03FormState createState() => _Questao03FormState();
}

class _Questao03FormState extends State<Questao03Form> {
  TextEditingController valorDoRaio = TextEditingController();
  Controller controller = Controller();
  double areaCincunferencia = 0;
  double perimetroCincunferencia = 0;

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
                    campoNumero: valorDoRaio,
                    hintTexto: 'Raio da circunferencia',
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                      Text('Resultado Area: $areaCincunferencia'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Resultado Perimetro: $perimetroCincunferencia'),
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
    if (valorDoRaio.text == null) {
      setState(() {});
    } else {
      setState(() {
        areaCincunferencia =
            controller.areaCircunferencia(double.tryParse(valorDoRaio.text)!);
        perimetroCincunferencia = controller
            .perimetroCircunferencia(double.tryParse(valorDoRaio.text)!);
      });
    }
  }
}
