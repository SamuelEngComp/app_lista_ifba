
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/questao_01_constroller.dart';

class Questao01Formulario extends StatefulWidget {

  
  

  @override
  _Questao01FormularioState createState() => _Questao01FormularioState();
}

class _Questao01FormularioState extends State<Questao01Formulario> {
  TextEditingController campoBase = TextEditingController();
  TextEditingController campoAltura = TextEditingController();

  Questao01Controller controller = Questao01Controller();
  int valorAreaRetangulo = 0;
  int valorPerimetroRetangulo = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digitar Valores'),
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
              controller: campoBase,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Base',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Altura',
              ),
              controller: campoAltura,
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
                  Text('Resultado Area: $valorAreaRetangulo'),
                  SizedBox(height: 10,),
                  Text('Resultado Perimetro: $valorPerimetroRetangulo'),
                ],
              ),
              ),
              
          ],
        ),
      ),
    );
  }

  void checaValores(){
    if(campoBase.text == null || campoAltura.text == null){
      setState(() {});
    }
    else{
      setState(() {
        valorAreaRetangulo = controller.areaRetangulo(int.tryParse(campoBase.text)!, int.tryParse(campoAltura.text)!);
        valorPerimetroRetangulo = controller.perimetroRetangulo(int.tryParse(campoBase.text)!, int.tryParse(campoAltura.text)!);
      });
    }
  }
}