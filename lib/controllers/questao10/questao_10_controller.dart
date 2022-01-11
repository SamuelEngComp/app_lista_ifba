class Questao10Controller {
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
  }
}

//Referencia:
//https://basthatisureshbabu-dart-basics.blogspot.com/2019/06/convert-decimal-to-binary.html?m=0
