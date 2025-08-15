void main() {
  int a = 10;
  int b = 3;
  double x = 7.5;
  double y = 2.5;
  
  // Operações com inteiros
  print("=== Operações com Inteiros ===");
  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");      // Resultado é double
  print("$a ~/ $b = ${a ~/ b}");    // Divisão inteira
  print("$a % $b = ${a % b}");      // Resto da divisão
  
  // Operações com decimais
  print("\n=== Operações com Decimais ===");
  print("$x + $y = ${x + y}");
  print("$x - $y = ${x - y}");
  print("$x * $y = ${x * y}");
  print("$x / $y = ${x / y}");
  
  // Operações mistas
  print("\n=== Operações Mistas ===");
  print("$a + $x = ${a + x}");      // int + double = double
  print("$b * $y = ${b * y}");      // int * double = double
}