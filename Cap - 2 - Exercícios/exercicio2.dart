// Exercício 2

// Implemente uma função que receba dois números e uma operação, retornando uma String com o resultado ou mensagem de erro apropriada.

void main() {
  String calcularOperacao(double num1, double num2, String op) {
    double resultado;
    String operador;
    
    switch (op.toLowerCase()) {
      case "+":
        resultado = num1 + num2;
        operador = "+";
        break;
      case "-":
        resultado = num1 - num2;
        operador = "-";
        break;
      case "*":
        resultado = num1 * num2;
        operador = "×";
        break;
      case "/":
        if (num2 == 0) {
          return "Erro: Divisão por zero";
        }
        resultado = num1 / num2;
        operador = "÷";
        break;
      default:
        return "Erro: Operação '$op' não suportada";
    }
    
    return "$num1 $operador $num2 = ${resultado.toStringAsFixed(2)}";
  }
  
  // Testes
  print(calcularOperacao(10.5, 2.5, "+"));
  print(calcularOperacao(15.0, 3.0, "/"));
  print(calcularOperacao(8.0, 0.0, "/"));
  print(calcularOperacao(7.0, 3.0, "%"));
}