import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

class Questao05Form extends StatefulWidget {
  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao05Form(
      {required this.enunciadoDaQuestao, required this.nomeNumeroQuestao});

  @override
  _Questao05FormState createState() => _Questao05FormState();
}

class _Questao05FormState extends State<Questao05Form> {
  int proximoNumero = 0;
  TextEditingController numeroDoUsuario = TextEditingController();
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
                EnunciadoQuestao(enunciado: widget.enunciadoDaQuestao),
                Container(
                  width: largura * 0.8,
                  child: CampoNumero(
                    campoNumero: numeroDoUsuario,
                    hintTexto: 'número',
                  ),
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
                      SizedBox(
                        height: 10,
                      ),
                      Text('Resultado: $proximoNumero'),
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
    if (numeroDoUsuario.text == null) {
      setState(() {});
    } else {
      setState(() {
        proximoNumero =
            controller.numeroSucessor(int.tryParse(numeroDoUsuario.text)!);
      });
    }
  }
}
