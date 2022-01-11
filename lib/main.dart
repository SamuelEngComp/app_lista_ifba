import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: AnimatedSplashScreen(
        splashIconSize: 300,
        splash: Image.asset(
          'assets/img/logo_ifba_.png',
        ),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: PaginaInicial(),
      ),
    );
  }
}
