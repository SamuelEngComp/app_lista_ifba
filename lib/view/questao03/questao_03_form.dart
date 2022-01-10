import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao_03_controller.dart';
import 'package:flutter_application_1/view/questao03/questao_03_view.dart';

class Questao03Form extends StatefulWidget {
  

  @override
  _Questao03FormState createState() => _Questao03FormState();
}

class _Questao03FormState extends State<Questao03Form> {
  TextEditingController valorDoRaio = TextEditingController();
  Questao03Controller controller = Questao03Controller();
  double areaCincunferencia = 0;
  double perimetroCincunferencia = 0;



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
              controller: valorDoRaio,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Digite o raio da circunferencia',
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
                  Text('Resultado Area: $areaCincunferencia'),
                  SizedBox(height: 10,),
                  Text('Resultado Perimetro: $perimetroCincunferencia'),
                ],
              ),
              ),
              
          ],
        ),
      ),
    
    );
  }

  void checaValores(){
    if(valorDoRaio.text == null){
      setState(() {});
    }
    else{
      setState(() {
        areaCincunferencia = controller.areaCircunferencia(double.tryParse(valorDoRaio.text)!);
        perimetroCincunferencia = controller.perimetroCircunferencia(double.tryParse(valorDoRaio.text)!);
      });
    }
  }




}