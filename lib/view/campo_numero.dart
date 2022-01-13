import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/controllers/controller.dart';

class CampoNumero extends StatelessWidget {
  late TextEditingController campoNumero;
  late String hintTexto;

  final _formKey = GlobalKey<FormState>();

  CampoNumero({required this.campoNumero, required this.hintTexto});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      maxLength: 4,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        helperText: hintTexto,
        contentPadding: const EdgeInsets.all(8),
        hintText: hintTexto,
      ),
      controller: campoNumero,
    );
  }
}
