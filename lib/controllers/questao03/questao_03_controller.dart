
//Dado o tamanho do raio de uma circunferência, calcular a área e o perímetro da mesma.
class Questao03Controller{

  static const PI = 3.14;

  double areaCircunferencia(double raio) => PI*(raio*raio);
  double perimetroCircunferencia(double raio) => 2*PI*raio;

}