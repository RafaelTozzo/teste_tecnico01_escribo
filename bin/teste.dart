import 'dart:io';

void main() {
  stdout.write("Digite um numero inteiro positivo: ");
  var digiteNumero = stdin.readLineSync();

  print(calculo(digiteNumero));
}

dynamic calculo(numeroDigitado) {
  numeroDigitado = int.tryParse(numeroDigitado);
  var soma = 0;

  for (var i = 0; i < numeroDigitado; i++) {
    if (numeroDigitado < 4) {
      return "Numero digitado invalido, favor digite um numero maior ou igual a 4.";
    } else if ((i % 3) == 0 || (i % 5) == 0) {
      soma += i;
    }
  }
  return "A soma dos divisores de 5 e 3 menores que $numeroDigitado é $soma.";
}
