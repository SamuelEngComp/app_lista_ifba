import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao_04_controller.dart';

class Questao04Form extends StatefulWidget {

  @override
  _Questao04FormState createState() => _Questao04FormState();
}

class _Questao04FormState extends State<Questao04Form> {

  Questao04Controller controller = Questao04Controller();
  double lado01 = 0;
  double lado02 = 0;
  double lado03 = 0;
  double perimetro = 0;
  TextEditingController lado01Digitado = TextEditingController();
  TextEditingController lado02Digitado = TextEditingController();
  TextEditingController lado03Digitado = TextEditingController();

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
              controller: lado01Digitado,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Digite o lado 1',
                ),
              ),
            ),
            
            SizedBox(height: 10,),

            Container(
              child: TextFormField(
              keyboardType: TextInputType.number,
              controller: lado02Digitado,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Digite o lado 2',
                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              child: TextFormField(
              keyboardType: TextInputType.number,
              controller: lado03Digitado,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Digite o lado 3',
                ),
              ),
            ),

            SizedBox(height: 10,),

            ElevatedButton(
              onPressed: checaValores,
              child: Text('Calcular')),
              SizedBox(height: 10,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(height: 10,),
                  Text('Resultado Perimetro: $perimetro'),
                ],
              ),
              ),
              
          ],
        ),
      ),
    
    );
  }


   void checaValores(){
    if(lado01Digitado.text == null || lado02Digitado.text == null || lado03Digitado.text == null){
      setState(() {});
    }
    else{
      setState(() {
        lado01 = double.tryParse(lado01Digitado.text)!;
        lado02 = double.tryParse(lado02Digitado.text)!;
        lado03 = double.tryParse(lado03Digitado.text)!;
        perimetro = controller.perimetroTriangulo(lado01, lado02, lado03);
      });
    }
  }


}