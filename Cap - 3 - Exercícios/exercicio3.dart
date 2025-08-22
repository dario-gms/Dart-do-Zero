/* Exercício 3: Números primos
Use for e if para encontrar todos os números primos de 2 a 50. */

void main() {
  print('Números primos de 2 a 50:');
  
  for (int num = 2; num <= 50; num++) {
    bool ehPrimo = true;
    
    // Verifica se num é divisível por algum número de 2 até sua raiz quadrada
    for (int divisor = 2; divisor * divisor <= num; divisor++) {
      if (num % divisor == 0) {
        ehPrimo = false;
        break; // Não precisa verificar mais divisores
      }
    }
    
    if (ehPrimo) {
      print(num);
    }
  }
}