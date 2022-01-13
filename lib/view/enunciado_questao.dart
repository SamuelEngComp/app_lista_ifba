import 'package:flutter/material.dart';

class EnunciadoQuestao extends StatelessWidget {
  late final String enunciado;

  EnunciadoQuestao({required this.enunciado});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width * 0.8;

    return Container(
      width: largura,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          enunciado,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
