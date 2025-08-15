void main() {
  // Simulando entrada de dados (no mundo real viria de input)
  double numero1 = 15.5;
  double numero2 = 4.2;
  String operacao = "+";
  
  // Função para realizar cálculos
  String calcular(double a, double b, String op) {
    // Realizando operações
    double resultado;
    String simbolo;
    
    switch (op.toLowerCase()) {
      case "+":
      case "soma":
        resultado = a + b;
        simbolo = "+";
        break;
      case "-":
      case "subtracao":
        resultado = a - b;
        simbolo = "-";
        break;
      case "*":
      case "multiplicacao":
        resultado = a * b;
        simbolo = "×";
        break;
      case "/":
      case "divisao":
        if (b == 0) {
          return "Erro: Divisão por zero não é permitida";
        }
        resultado = a / b;
        simbolo = "÷";
        break;
      default:
        return "Erro: Operação '$op' não reconhecida";
    }
    
    // Formatando resultado
    String resultadoFormatado = resultado % 1 == 0 
        ? resultado.toInt().toString()
        : resultado.toStringAsFixed(2);
    
    return "$a $simbolo $b = $resultadoFormatado";
  }
  
  // Testando diferentes casos
  print("=== Calculadora com Validações ===");
  print(calcular(numero1, numero2, operacao));
  print(calcular(10.0, 3.0, "divisao"));
  print(calcular(8.0, 2.0, "*"));
  print(calcular(100.0, 0.0, "/"));  // Teste divisão por zero
  print(calcular(7.0, 3.0, "xyz"));  // Teste operação inválida
  
  // Exemplo de uso com diferentes tipos
  print("\n=== Conversões e Tipos ===");
  int inteiro1 = 20;
  int inteiro2 = 7;
  
  print("Divisão normal: ${inteiro1 / inteiro2}");
  print("Divisão inteira: ${inteiro1 ~/ inteiro2}");
  print("Resto: ${inteiro1 % inteiro2}");
  
  // Convertendo tipos
  double doubleFromInt = inteiro1.toDouble();
  String stringFromInt = inteiro1.toString();
  
  print("Int para double: $doubleFromInt");
  print("Int para string: '$stringFromInt'");
  
  // Verificando tipos
  print("inteiro1 é int: ${inteiro1 is int}");
  print("doubleFromInt é double: ${doubleFromInt is double}");
}