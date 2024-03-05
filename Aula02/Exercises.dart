void main() {

 //ex01
  print('Ex01');

   //ex02
  print('ex02');

   //ex03
  print('ex03');



  //ex04
  print('Ex04');
  int number1 = 20;
  int number2 = 4;

  var resto = 20 % 4;

  print(resto);

  //ex05
  print('Ex05');
  var number = 50;
  print(number++);

  print(number--);

  //ex06
  print('Ex06');

  var name1 = 'John';
  var name2 = 'Joseph';
  var name3 = 'John';

  if (name1 == name2) {
    print("Nomes iguais!");
  } else {
    print("Nomes diferentes!");
  }
  ;
  if (name1 == name3) {
    print("Nomes iguais");
  }
  ;

  //ex07
  print('Ex07');

  var C = 37;
  final calculate = C * (9 / 5 + 3);

  print('Temperatura em Fº $calculate');

  //ex08
  print('Ex08');
  List personData = ["Peter", 26, 1.75];

  for (int i = 0; i < personData.length; i++) {
    print("var ${personData[i]} e um ${personData[i].runtimeType}");
  }

  //ex09
  print('Ex09');
  var num1 = 1;
  var num2 = 3;
  var num3 = 7;

  var result = (num1 > 0) && (num2 > 0) && (num3 > 0);

  print(result ? "Todos 3 numeros positivos" : "Não são todos positivos!");

  //ex10
  print('Ex10');

  var nota1 = 7;
  var nota2 = 8;
  var nota3 = 9;

  var notaFinal = (nota1 + nota2 + nota3) / 3;

  print(notaFinal >= 7.5 ? "Aprovado" : "Reprovado");
}
