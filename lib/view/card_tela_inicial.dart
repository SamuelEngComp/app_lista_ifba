import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao01/questao_01_view.dart';

class CardTelaInicial extends StatefulWidget {
  final String titulo;
  final String subTitulo;
  Widget telaRedirecionar;

  CardTelaInicial(
      {required this.titulo,
      required this.subTitulo,
      required this.telaRedirecionar});

  @override
  _CardTelaInicialState createState() => _CardTelaInicialState();
}

class _CardTelaInicialState extends State<CardTelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 9.0,
      borderOnForeground: true,
      color: Colors.orange.shade100,
      shadowColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExpansionTile(
            iconColor: Colors.red,
            collapsedIconColor: Colors.black,
            childrenPadding: EdgeInsets.all(9),
            title: Text(widget.titulo,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19)),
            children: [
              ListTile(
                leading: IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => widget.telaRedirecionar));
                  },
                ),
                subtitle: Text(widget.subTitulo,
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
