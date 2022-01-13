import 'package:flutter/material.dart';

class Controller {
  /// Questão 01: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  int areaRetangulo(int base, int altura) => base * altura;
  int perimetroRetangulo(int base, int altura) => 2 * (base + altura);

  /// Questão 02: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  int areaQuadrado(int lado) => lado * lado;
  int perimetroQuadrado(int lado) => 4 * lado;

  /// Questão 03: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  static const PI = 3.1415;

  double areaCircunferencia(double raio) =>
      double.parse((PI * (raio * raio)).toStringAsFixed(2));
  double perimetroCircunferencia(double raio) =>
      double.parse((2 * PI * raio).toStringAsFixed(2));

  /// Questão 04: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  double perimetroTriangulo(double lado01, double lado02, double lado03) =>
      lado01 + lado02 + lado03;

  /// Questão 05: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  int numeroSucessor(int numeroDigitado) => numeroDigitado + 1;

  /// Questão 06: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  int restoDaDivisaoEntreDoisNumeros(int numero1, int numero2) =>
      numero1 % numero2;

  double quocienteEntreDoisNumeros(int numero1, int numero2) {
    return numero1 / numero2;
  }

  /// Questão 07: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  String questaoEmDesenvolvimento() {
    return 'Questão em desenvolvimento';
  }

  /// Questão 08: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  double fahrenheitToCelsius(double temperaturaFahrenheit) {
    return ((5 / 9) * (temperaturaFahrenheit - 32));
  }

  /// Questão 09: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  double volumeLataDeOleo(double raio, double altura) =>
      (PI * (raio * raio) * altura);

  /// Questão 10: Dado o tamanho da base e da altura de um retângulo,
  /// calcular a sua área e o seu perímetro.
  int conversorDecimalParaBinario({required int numeroDecimal}) {
    int numeroSistemaBinario = 0;
    int contador = 1;

    while (numeroDecimal > 0) {
      numeroSistemaBinario =
          numeroSistemaBinario + (numeroDecimal % 2) * contador;
      numeroDecimal = (numeroDecimal / 2).floor();
      contador = contador * 10;
    }

    return numeroSistemaBinario;
    //Referencia:
    //https://basthatisureshbabu-dart-basics.blogspot.com/2019/06/convert-decimal-to-binary.html?m=0
  }
}