// Implemente um catálogo usando Map para produtos com preços e categorias, incluindo busca por faixa de preço.

// Requisitos:

// Map com pelo menos 5 produtos
// Busca por categoria e faixa de preço
// Produto mais caro e mais barato

void main() {
  // Catálogo de produtos
  List<Map<String, dynamic>> produtos = [
    {'nome': 'Notebook Dell', 'preco': 2500.00, 'categoria': 'informatica'},
    {'nome': 'Smartphone Samsung', 'preco': 800.00, 'categoria': 'celular'},
    {'nome': 'Tênis Nike', 'preco': 350.00, 'categoria': 'calçado'},
    {'nome': 'Livro Dart', 'preco': 45.00, 'categoria': 'livro'},
    {'nome': 'Mouse Gamer', 'preco': 120.00, 'categoria': 'informatica'},
    {'nome': 'Fone Bluetooth', 'preco': 200.00, 'categoria': 'audio'},
    {'nome': 'Camiseta', 'preco': 35.00, 'categoria': 'roupa'}
  ];
  
  print('=== CATÁLOGO DE PRODUTOS ===\n');
  
  // Listando todos os produtos
  print('📦 TODOS OS PRODUTOS:');
  for (int i = 0; i < produtos.length; i++) {
    Map<String, dynamic> produto = produtos[i];
    print('${i + 1}. ${produto['nome']} - R\$ ${produto['preco'].toStringAsFixed(2)} (${produto['categoria']})');
  }
  
  // Produto mais caro e mais barato
  Map<String, dynamic> maisCaro = produtos[0];
  Map<String, dynamic> maisBarato = produtos[0];
  
  for (Map<String, dynamic> produto in produtos) {
    if (produto['preco'] > maisCaro['preco']) {
      maisCaro = produto;
    }
    if (produto['preco'] < maisBarato['preco']) {
      maisBarato = produto;
    }
  }
  
  print('\n💰 MAIS CARO: ${maisCaro['nome']} - R\$ ${maisCaro['preco'].toStringAsFixed(2)}');
  print('💸 MAIS BARATO: ${maisBarato['nome']} - R\$ ${maisBarato['preco'].toStringAsFixed(2)}');
  
  // Busca por categoria
  String categoriaBusca = 'informatica';
  print('\n🔍 PRODUTOS DE ${categoriaBusca.toUpperCase()}:');
  
  List<Map<String, dynamic>> produtosCategoria = produtos.where((produto) {
    return produto['categoria'] == categoriaBusca;
  }).toList();
  
  for (Map<String, dynamic> produto in produtosCategoria) {
    print('- ${produto['nome']}: R\$ ${produto['preco'].toStringAsFixed(2)}');
  }
  
  // Busca por faixa de preço
  double precoMin = 100.00;
  double precoMax = 500.00;
  
  print('\n💵 PRODUTOS ENTRE R\$ ${precoMin.toStringAsFixed(2)} e R\$ ${precoMax.toStringAsFixed(2)}:');
  
  List<Map<String, dynamic>> produtosFaixa = produtos.where((produto) {
    double preco = produto['preco'];
    return preco >= precoMin && preco <= precoMax;
  }).toList();
  
  for (Map<String, dynamic> produto in produtosFaixa) {
    print('- ${produto['nome']}: R\$ ${produto['preco'].toStringAsFixed(2)}');
  }
  
  // Estatísticas por categoria
  Set<String> categorias = {};
  for (Map<String, dynamic> produto in produtos) {
    categorias.add(produto['categoria']);
  }
  
  print('\n📊 ESTATÍSTICAS POR CATEGORIA:');
  for (String categoria in categorias) {
    List<Map<String, dynamic>> produtosCat = produtos.where((p) => p['categoria'] == categoria).toList();
    double somaPrecos = 0;
    for (Map<String, dynamic> p in produtosCat) {
      somaPrecos += p['preco'];
    }
    double mediaPrecos = somaPrecos / produtosCat.length;
    
    print('$categoria: ${produtosCat.length} produtos, preço médio: R\$ ${mediaPrecos.toStringAsFixed(2)}');
  }
}
