import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';
import 'package:flutter_application_1/view/campo_numero.dart';
import 'package:flutter_application_1/view/enunciado_questao.dart';

class Questao06Form extends StatefulWidget {

  String enunciadoDaQuestao;
  String nomeNumeroQuestao;

  Questao06Form(
      {required this.enunciadoDaQuestao, 
      required this.nomeNumeroQuestao});


  @override
  _Questao06FormState createState() => _Questao06FormState();
}

class _Questao06FormState extends State<Questao06Form> {
  TextEditingController primeiroNumeroDigitado = TextEditingController();
  TextEditingController segundoNumeroDigitado = TextEditingController();

  int restoDivisao = 0;
  double quociente = 0;

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
                campoNumero: primeiroNumeroDigitado,
                hintTexto: 'Primeiro número',
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              width: largura * 0.8,
              child: CampoNumero(
                campoNumero: segundoNumeroDigitado,
                hintTexto: 'Segundo número',
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(9.0),
              child: ElevatedButton(onPressed: checaValores, 
              child: Text('Calcular')),
            ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text('Resultado Quociente: $quociente'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Resultado Resto: $restoDivisao'),
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
    if (primeiroNumeroDigitado.text == null ||
        segundoNumeroDigitado.text == null) {
      setState(() {});
    } else {
      setState(() {
        restoDivisao = controller.restoDaDivisaoEntreDoisNumeros(
            int.tryParse(primeiroNumeroDigitado.text)!,
            int.tryParse(segundoNumeroDigitado.text)!);

        quociente = controller.quocienteEntreDoisNumeros(
            int.tryParse(primeiroNumeroDigitado.text)!,
            int.tryParse(segundoNumeroDigitado.text)!);
      });
    }
  }
}
