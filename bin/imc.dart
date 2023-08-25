import 'dart:convert';
import 'dart:io';
import 'package:imc/pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa();
  print('Seu nome:');
  String? nome = stdin.readLineSync(encoding: utf8);
  print('Seu peso:');
  double peso = double.parse(stdin.readLineSync()!);

  print("Sua altura");
  double altura = double.parse(stdin.readLineSync()!);

  p1.setNome(nome!);
  p1.setPeso(peso);
  p1.setAltura(altura);

  var calculo = p1.getPeso() / (p1.getAltura() * 2);

  if (calculo < 16) {
    print('Você está abaixo do peso ideal.');
  } else if (calculo >= 16 && calculo < 17) {
    print('Magreza moderada.');
  } else if (calculo >= 16 && calculo < 18.5) {
    print('Magreza leve');
  } else if (calculo >= 18.5 && calculo < 25) {
    print('Saudável');
  } else if (calculo >= 25 && calculo < 30) {
    print('Sobrepeso');
  } else if (calculo >= 30 && calculo < 35) {
    print('Obesidade grau I');
  } else if (calculo >= 35 && calculo < 35) {
    print('Obesidade grau II');
  } else if (calculo >= 40) {
    print('Obesidade grau III');
  }
}
