// Crie um sistema que armazene informações de 3 livros (título, autor, ano) e imprima um relatório organizado.

void main() {
  List<Map<String, dynamic>> livros = [
    {'titulo': '1984', 'autor': 'George Orwell', 'ano': 1949},
    {'titulo': 'Dom Casmurro', 'autor': 'Machado de Assis', 'ano': 1899},
    {'titulo': 'O Alquimista', 'autor': 'Paulo Coelho', 'ano': 1988},
  ];
  
  print('=== Biblioteca Pessoal ===');
  
  for (int i = 0; i < livros.length; i++) {
    var livro = livros[i];
    print('${i + 1}. ${livro['titulo']}');
    print('   Autor: ${livro['autor']}');
    print('   Ano: ${livro['ano']}\n');
  }
}