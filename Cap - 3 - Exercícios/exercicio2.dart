// Exercício 2: Calculadora com switch
// Implemente uma calculadora que use switch expression para as operações +, -, *, /. 

void main() {
  double a = 10;
  double b = 3;
  String operacao = '/';
  
  double resultado = switch (operacao) {
    '+' => a + b,
    '-' => a - b,
    '*' => a * b,
    '/' => b != 0 ? a / b : double.nan,
    _ => double.nan
  };
  
  if (resultado.isNaN) {
    print('Operação inválida ou divisão por zero!');
  } else {
    print('$a $operacao $b = $resultado');
  }
  
  // Testando várias operações
  List<String> operacoes = ['+', '-', '*', '/', '%'];
  for (String op in operacoes) {
    if (op == '%') continue; // Pula operações não implementadas
    
    double res = switch (op) {
      '+' => a + b,
      '-' => a - b,
      '*' => a * b,
      '/' => b != 0 ? a / b : double.nan,
      _ => double.nan
    };
    
    print('$a $op $b = $res');
  }
}