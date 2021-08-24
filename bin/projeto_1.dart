import 'dart:async';
import 'package:projeto_1/projeto_1.dart' as projeto_1;
import "dart:io";

void main(List<String> arguments) {
  print('Vamos testar seu IMC?');
  print('Digite seu nome:');
  dynamic entradaNome = stdin.readLineSync();
  var nome = entradaNome;
  print('Olá, $nome! Digite seu peso:');
  dynamic entradaPeso = stdin.readLineSync();
  var peso = double.parse(entradaPeso);
  print('Digite sua altura:');
  dynamic entradaAltura = stdin.readLineSync();
  var altura = double.parse(entradaAltura);

  var imc = peso / (altura * altura);
  String imc_format = imc.toStringAsPrecision(2);

  if (imc <= 18.5) {
    print('\n=================================');
    print('IMC = $imc_format - Abaixo do peso');
    print('===================================\n');
    print('Você pode se alimentar melhor. Não desista!\n'
        'Obrigado por testar nosso aplicativo, $nome!\n');
  } else if (imc > 18.5 && imc <= 24.9) {
    print('\n=================================');
    print('IMC = $imc_format - Peso normal');
    print('===================================\n');
    print("Você está de parabéns! Continue assim!\n\n"
        'Obrigado por testar nosso aplicativo, $nome!\n');
  } else if (imc >= 25.0 && imc <= 29.9) {
    print('\n=================================');
    print('IMC = $imc_format - Pré-obesidade');
    print('===================================\n');
    print('Você pode se alimentar melhor. Não desista!\n\n'
        'Obrigado por testar nosso aplicativo, $nome!\n');
  } else if (imc >= 30 && imc <= 34.9) {
    print('\n=================================');
    print('IMC = $imc_format - Obesidade Grau 1');
    print('===================================\n');
    print('Você pode se alimentar melhor. Não desista!\n\n'
        'Obrigado por testar nosso aplicativo, $nome!\n');
  } else if (imc >= 35.0 && imc <= 39.9) {
    print('\n=================================');
    print('IMC = $imc_format - Obesidade Grau 2');
    print('===================================\n');
    print('Você pode se alimentar melhor. Não desista!\n\n'
        'Obrigado por testar nosso aplicativo, $nome!\n');
  } else {
    print('\n=================================');
    print('IMC = $imc_format - Obesidade Grau 3');
    print('===================================\n');
    print('Você pode se alimentar melhor. Não desista!\n\n'
        'Obrigado por testar nosso aplicativo, $nome!\n');
  }
}
