void main() {
  // Ordem dos parâmetros é importante
  String ficha = criarFicha('João', 'Silva', 25);
  print(ficha);
  
  // Calculando área de retângulo
  double area = calcularArea(5.0, 3.0);
  print('Área: ${area.toStringAsFixed(2)} m²');
  
  // Testando divisão
  try {
    double resultado = dividir(10.0, 0.0);
    print('Resultado: $resultado');
  } catch (e) {
    print('Erro: $e');
  }
}

String criarFicha(String nome, String sobrenome, int idade) {
  return 'Nome: $nome $sobrenome, Idade: $idade anos';
}

double calcularArea(double largura, double altura) {
  return largura * altura;
}

double dividir(double dividendo, double divisor) {
  if (divisor == 0) {
    throw ArgumentError('Não é possível dividir por zero!');
  }
  return dividendo / divisor;
}
