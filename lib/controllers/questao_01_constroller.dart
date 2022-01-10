

import 'package:flutter/material.dart';

/**
 * Questão 01: Dado o tamanho da base e da altura de um retângulo, 
 * calcular a sua área e o seu perímetro.
 * 
 */

class Questao01Controller{

  int areaRetangulo(int base, int altura) => base*altura;

  int perimetroRetangulo(int base, int altura) => 2 * (base + altura);


}