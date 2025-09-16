import 'dart:math' as math;

void main() {
  // Diferentes tipos numéricos
  int inteiro = 42;
  double decimal = 3.14159;
  num numero = 10; // Pode ser int ou double
  
  print('Inteiro: $inteiro (tipo: ${inteiro.runtimeType})');
  print('Decimal: $decimal (tipo: ${decimal.runtimeType})');
  print('Número: $numero (tipo: ${numero.runtimeType})');
  
  // Operações básicas
  print('\n--- Operações Básicas ---');
  print('$inteiro + $decimal = ${inteiro + decimal}');
  print('$inteiro * $decimal = ${inteiro * decimal}');
  print('$inteiro / 5 = ${inteiro / 5}'); // Sempre retorna double
  print('$inteiro ~/ 5 = ${inteiro ~/ 5}'); // Divisão inteira
  print('$inteiro % 5 = ${inteiro % 5}'); // Resto da divisão
  
  // Conversões
  print('\n--- Conversões ---');
  String textoNumero = '123.45';
  int inteiroConvertido = int.parse('123');
  double decimalConvertido = double.parse(textoNumero);
  
  print('String "$textoNumero" para double: $decimalConvertido');
  print('Int $inteiro para String: "${inteiro.toString()}"');
  print('Double $decimal para String: "${decimal.toString()}"');
  
  // Formatação de decimais
  print('Pi com 2 casas decimais: ${decimal.toStringAsFixed(2)}');
  print('Pi com 4 casas decimais: ${decimal.toStringAsFixed(4)}');
  
  // Verificações
  print('\n--- Verificações ---');
  print('$decimal é finito? ${decimal.isFinite}');
  print('$decimal é inteiro? ${decimal % 1 == 0}');
  print('$inteiro é par? ${inteiro % 2 == 0}');
  print('$inteiro é ímpar? ${inteiro % 2 != 0}');
  
  // Funções matemáticas (requer import 'dart:math')
  print('\n--- Funções Matemáticas ---');
  print('Valor absoluto de -10: ${(-10).abs()}');
  print('Raiz quadrada de 16: ${math.sqrt(16)}');
  print('Potência 2³: ${math.pow(2, 3)}');
  print('Máximo entre 10 e 20: ${math.max(10, 20)}');
  print('Mínimo entre 10 e 20: ${math.min(10, 20)}');
  print('Número aleatório entre 0-1: ${math.Random().nextDouble()}');
  print('Inteiro aleatório 1-100: ${math.Random().nextInt(100) + 1}');
  
  // Arredondamentos
  double valorDecimal = 3.7;
  print('\n--- Arredondamentos ---');
  print('$valorDecimal arredondado: ${valorDecimal.round()}');
  print('$valorDecimal para baixo: ${valorDecimal.floor()}');
  print('$valorDecimal para cima: ${valorDecimal.ceil()}');
  
  // Validação de entrada
  print('\n--- Validação ---');
  String? entrada = '42abc'; // Simulando entrada do usuário
  
  int? numeroValidado = int.tryParse(entrada);
  if (numeroValidado != null) {
    print('Entrada "$entrada" é um número válido: $numeroValidado');
  } else {
    print('Entrada "$entrada" não é um número válido');
  }
  
  // Trabalhando com precisão
  print('\n--- Precisão ---');
  double resultado = 0.1 + 0.2;
  print('0.1 + 0.2 = $resultado'); // Pode não ser exatamente 0.3
  print('É igual a 0.3? ${resultado == 0.3}');
  
  // Comparação com tolerância
  bool saoIguais = (resultado - 0.3).abs() < 0.0000001;
  print('São iguais com tolerância? $saoIguais');
}
