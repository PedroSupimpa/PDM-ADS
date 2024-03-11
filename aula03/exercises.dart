

void main() {

// 1. Contagem

  for (int i = 1; i <= 10; i++) {
    print(i);
  }


// 2. Soma Sequencial

  print("Digite um número: ");
  int n = 10

  int soma = 0;
  for (int i = 1; i <= n; i++) {
    soma += i;
  }

  print("A soma dos números de 1 a $n é: $soma");


// 3. Lista de Números

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int numero in numeros) {
    print(numero);
  }


// 4. Números Pares

  for (int i = 2; i <= 50; i += 2) {
    print(i);
  }


// 5. While Contador

  int contador = 100;
  while (contador >= 0) {
    print(contador);
    contador -= 5;
  }


// 6. Inversão de Strings

  print("Digite uma palavra: ");
  String palavra = "Banana"
  
  for (int i = palavra.length - 1; i >= 0; i--) {
    print(palavra[i]);
  }


// 7. Tabela de Multiplicação

  print("Digite um número: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print("$n x $i = ${n * i}");
  }


// 8. Lista até o Primeiro Negativo

  List<int> numeros = [];
  int numero;

  do {
    print("Digite um número (negativo para parar): ");
    numero = -5;
    
    if (numero >= 0) {
      numeros.add(numero);
    }
  } while (numero >= 0);

  print("Números positivos inseridos: $numeros");


// 9. Soma de Números Ímpares

  print("Digite o número inicial: ");
  int inicio = 5;

  print("Digite o número final: ");
  int fim = 37;

  int soma = 0;
  for (int i = inicio; i <= fim; i++) {
    if (i % 2 != 0) {
      soma += i;
    }
  }

  print("A soma dos números ímpares entre $inicio e $fim é: $soma");


// 10. Break e Continue

  for (int i = 1; i <= 20; i++) {
    if (i % 4 == 0) {
      continue;
    }

    print(i);

    if (i == 18) {
      break;
    }
  }




}
