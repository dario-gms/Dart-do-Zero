// Implemente uma calculadora usando arrow functions para as operações básicas (+, -, *, /).

void main() {
  // Testando operações básicas
  print('5 + 3 = ${somar(5, 3)}');
  print('10 - 4 = ${subtrair(10, 4)}');
  print('6 * 7 = ${multiplicar(6, 7)}');
  print('15 / 3 = ${dividir(15, 3)}');
  
  // Testando divisão por zero
  try {
    print('10 / 0 = ${dividir(10, 0)}');
  } catch (e) {
    print('Erro: $e');
  }
  
  // Usando a calculadora com operação personalizada
  double resultado = calcular(10, 5, multiplicar);
  print('Calculadora: 10 * 5 = $resultado');
}

// Arrow functions para operações básicas
double somar(double a, double b) => a + b;
double subtrair(double a, double b) => a - b;
double multiplicar(double a, double b) => a * b;
double dividir(double a, double b) => b != 0 ? a / b : throw ArgumentError('Divisão por zero');

// Função que recebe operação como parâmetro
double calcular(double a, double b, double Function(double, double) operacao) => operacao(a, b);
