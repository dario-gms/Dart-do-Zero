void main() {
  // Chamando nossa função personalizada
  String resultado = saudar('Maria');
  print(resultado);
  
  // Chamando função que calcula
  int soma = somar(10, 5);
  print('A soma é: $soma');
}

// Função que retorna uma String
String saudar(String nome) {
  return 'Olá, $nome! Bem-vindo ao Dart.';
}

// Função que retorna um int
int somar(int a, int b) {
  return a + b;
}
