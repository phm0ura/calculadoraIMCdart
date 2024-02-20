import 'dart:io';

/// CALCULADORA DE IMC !

void main() {
  String nome = "";
  int idade = 0;
  double altura = 0;
  double peso = 0;

  void calcularIMC() {
    print("Olá, Bem-vindo(a) à calculadora de IMC");
    print("Qual seu nome?");
    String? input = stdin.readLineSync();
    if (input != null) {    // Sempre
      nome = input.toString();
    } else {
      print("erro");
    }

    print("Qual a sua idade?");
    input = stdin.readLineSync();
    if (input != null) {
      idade = int.parse(input);
    } else {
      print("erro");
    }

    print("Qual a sua altura?"); //
    input = stdin.readLineSync();
    if (input != null) {
      altura = double.parse(input);
    } else {
      print("erro");
    }
    print("Qual o seu peso?");
    input = stdin.readLineSync();
    if (input != null) {
      peso = double.parse(input);
    } else {
      print("erro");
    }

    double imc = peso / (altura * altura);
    print("Seu IMC é: $imc");

  if(imc <= 17){
    print("Você está muito abaixo do peso!");
  }
  else if(imc > 17 && imc <= 18.49){
    print("Você enconra-seAbaixo do peso!");
  }
  else if(imc> 18.50 && imc <= 24.99){
    print("Você enconra-se em seu Peso Normal");
  }
  else if(imc> 25 && imc <=29.99){
    print("Você enconra-se Acima do Peso");
  }
  else if(imc>30 && imc <=34.99){
    print("Você encontra-se com Obesidade nível I");
  }
  else if(imc>35 && imc<= 39.99){
    print("Você encontra-se com Obesidade nível II ( Severa)");
  }
  else if(imc>= 40){
    print("Você encontra-se com Obesidade nível III (Mórbida)");
  }


  }

  calcularIMC(); // Chamada da função
}
