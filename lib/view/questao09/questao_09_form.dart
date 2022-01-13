import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/controller.dart';

class Questao09Form extends StatefulWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Digitar Valor'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: campoRaio,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'raio',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: campoAltura,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'altura',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: checaValores, child: Text('Calcular')),
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
                  Text('Resultado: $volumeDaLata'),
                ],
              ),
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
