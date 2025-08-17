void main() {
  // For tradicional - sabemos quantas vezes executar
  print('=== Contagem simples ===');
  for (int i = 1; i <= 5; i++) {
    print('Contagem: $i');
  }
  
  // For com step diferente
  print('\n=== Contagem de 2 em 2 ===');
  for (int i = 0; i <= 10; i += 2) {
    print('Número par: $i');
  }
  
  // For decrescente
  print('\n=== Contagem regressiva ===');
  for (int i = 5; i >= 1; i--) {
    print('$i...');
  }
  print('🚀 Decolagem!');
  
  // For-in para percorrer coleções
  List<String> frutas = ['maçã', 'banana', 'laranja', 'uva'];
  print('\n=== Lista de frutas ===');
  for (String fruta in frutas) {
    print('Fruta: $fruta');
  }
  
  // For-in com índice usando enumerate (versão manual)
  print('\n=== Com índices ===');
  for (int i = 0; i < frutas.length; i++) {
    print('${i + 1}. ${frutas[i]}');
  }
}