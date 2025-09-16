void main() {
  // Sistema completo usando todas as estruturas
  
  // Lista de livros disponíveis
  List<Map<String, dynamic>> acervo = [
    {
      'id': 1,
      'titulo': 'Dart: Guia Completo',
      'autor': 'João Silva',
      'ano': 2023,
      'disponivel': true,
      'categoria': 'programacao'
    },
    {
      'id': 2,
      'titulo': 'Flutter na Prática',
      'autor': 'Maria Santos',
      'ano': 2024,
      'disponivel': false,
      'categoria': 'programacao'
    },
    {
      'id': 3,
      'titulo': 'História do Brasil',
      'autor': 'Carlos Pereira',
      'ano': 2022,
      'disponivel': true,
      'categoria': 'historia'
    }
  ];
  
  // Set de categorias únicas
  Set<String> categorias = {};
  
  // Map de usuários emprestados
  Map<int, String> emprestimos = {
    2: 'Ana Costa' // Livro ID 2 emprestado para Ana
  };
  
  // Extraindo categorias do acervo
  for (Map<String, dynamic> livro in acervo) {
    categorias.add(livro['categoria'] as String);
  }
  
  print('=== SISTEMA DE BIBLIOTECA ===\n');
  
  // 1. Relatório geral
  print('📚 RELATÓRIO GERAL');
  print('Total de livros: ${acervo.length}');
  print('Categorias disponíveis: $categorias');
  print('Livros emprestados: ${emprestimos.length}\n');
  
  // 2. Lista completa do acervo
  print('📖 ACERVO COMPLETO');
  for (int i = 0; i < acervo.length; i++) {
    Map<String, dynamic> livro = acervo[i];
    String status = livro['disponivel'] ? '✅ Disponível' : '❌ Emprestado';
    String emprestadoPara = emprestimos.containsKey(livro['id']) 
        ? ' (para: ${emprestimos[livro['id']]})' 
        : '';
    
    print('${i + 1}. "${livro['titulo']}" - ${livro['autor']} (${livro['ano']})');
    print('   Categoria: ${livro['categoria']} | $status$emprestadoPara');
  }
  print('');
  
  // 3. Busca por categoria
  String categoriaBusca = 'programacao';
  print('🔍 LIVROS DE ${categoriaBusca.toUpperCase()}');
  
  List<Map<String, dynamic>> livrosProgramacao = acervo.where((livro) {
    return livro['categoria'] == categoriaBusca;
  }).toList();
  
  for (Map<String, dynamic> livro in livrosProgramacao) {
    String disponibilidade = livro['disponivel'] ? 'Disponível' : 'Emprestado';
    print('- "${livro['titulo']}" ($disponibilidade)');
  }
  print('');
  
  // 4. Livros disponíveis para empréstimo
  print('✅ LIVROS DISPONÍVEIS');
  List<Map<String, dynamic>> disponiveis = acervo.where((livro) {
    return livro['disponivel'] == true;
  }).toList();
  
  for (Map<String, dynamic> livro in disponiveis) {
    print('- ID ${livro['id']}: "${livro['titulo']}" - ${livro['autor']}');
  }
  print('');
  
  // 5. Simulando novo empréstimo
  print('📋 SIMULANDO EMPRÉSTIMO');
  int livroId = 1;
  String nomeUsuario = 'Pedro Lima';
  
  // Encontrando o livro
  Map<String, dynamic>? livroEscolhido;
  for (Map<String, dynamic> livro in acervo) {
    if (livro['id'] == livroId) {
      livroEscolhido = livro;
      break;
    }
  }
  
  if (livroEscolhido != null && livroEscolhido['disponivel']) {
    // Realizando empréstimo
    livroEscolhido['disponivel'] = false;
    emprestimos[livroId] = nomeUsuario;
    
    print('✅ Empréstimo realizado!');
    print('Livro: "${livroEscolhido['titulo']}"');
    print('Usuário: $nomeUsuario');
  } else {
    print('❌ Livro não disponível para empréstimo');
  }
  print('');
  
  // 6. Relatório final
  print('📊 RELATÓRIO FINAL');
  int totalDisponiveis = acervo.where((livro) => livro['disponivel']).length;
  int totalEmprestados = acervo.length - totalDisponiveis;
  
  print('Livros disponíveis: $totalDisponiveis');
  print('Livros emprestados: $totalEmprestados');
  
  // 7. Lista de usuários com empréstimos
  if (emprestimos.isNotEmpty) {
    print('\n👥 USUÁRIOS COM EMPRÉSTIMOS:');
    emprestimos.forEach((livroId, usuario) {
      // Encontrando título do livro
      String titulo = 'Livro não encontrado';
      for (Map<String, dynamic> livro in acervo) {
        if (livro['id'] == livroId) {
          titulo = livro['titulo'] as String;
          break;
        }
      }
      print('- $usuario: "$titulo"');
    });
  }
  
  // 8. Estatísticas por categoria
  print('\n📈 ESTATÍSTICAS POR CATEGORIA:');
  Map<String, int> estatisticas = {};
  
  for (String categoria in categorias) {
    int quantidade = acervo.where((livro) => livro['categoria'] == categoria).length;
    estatisticas[categoria] = quantidade;
  }
  
  estatisticas.forEach((categoria, quantidade) {
    double percentual = (quantidade / acervo.length) * 100;
    print('$categoria: $quantidade livros (${percentual.toStringAsFixed(1)}%)');
  });
}
