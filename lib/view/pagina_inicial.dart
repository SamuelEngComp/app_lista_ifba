import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/questao01/questao_01_view.dart';
import 'package:flutter_application_1/view/questao02/questao_02_view.dart';
import 'package:flutter_application_1/view/questao03/questao_03_view.dart';
import 'package:flutter_application_1/view/questao04/questao_04_view.dart';
import 'package:flutter_application_1/view/questao05/questao_05_view.dart';
import 'package:flutter_application_1/view/questao06/questao_06_view.dart';
import 'package:flutter_application_1/view/questao07/questao_07_view.dart';
import 'package:flutter_application_1/view/questao08/questao_08_view.dart';
import 'package:flutter_application_1/view/questao09/questao_09_view.dart';
import 'package:flutter_application_1/view/questao10/questao_10_view.dart';

class PaginaInicial extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    List<Widget> itensTelaPrincipal = [Questao01(),
            Questao02(),
            Questao03(),
            Questao04(),
            Questao05(),
            Questao06(),
            Questao07(),
            Questao08(),
            Questao09(),
            Questao10(),];

    return Scaffold(
      /* appBar: AppBar(
        leading: Icon(Icons.work),
        centerTitle: true,
        title: const Text(
          'Exercicios IFBA',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ), */
      body: CustomScrollView(
        /* width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height, */
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange.shade600,
            title: Text('Exercícios IFBA',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            actions: [
              Image.asset('assets/img/logo_ifba.png',
              fit: BoxFit.cover,),
              SizedBox(width: 20,),
            ],
            //centerTitle: true,
            pinned: true,
            floating: true,
            expandedHeight: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/img/salvador.jpg',
              scale: 1,
              //    alignment: Alignment.center,
                    fit: BoxFit.cover),
              //title: Text('Exercícios IFBA'),
              centerTitle: true,
              stretchModes: [
                StretchMode.fadeTitle,
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(itensTelaPrincipal)),
        ],


        //color: Colors.red,
        /* child: ListView(
          children: [
            Questao01(),
            Questao02(),
            Questao03(),
            Questao04(),
            Questao05(),
            Questao06(),
            Questao07(),
            Questao08(),
            Questao09(),
            Questao10(),
          ],
        ), */
      ),
    );
  }
}
