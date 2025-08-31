// Desenvolva uma função de alta ordem que processe uma lista de produtos, aplicando filtros e transformações personalizáveis.

void main() {
  // Lista de produtos simulada
  List<Map<String, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 2500.0, 'categoria': 'eletrônicos', 'estoque': 5},
    {'nome': 'Mouse', 'preco': 50.0, 'categoria': 'eletrônicos', 'estoque': 20},
    {'nome': 'Livro Dart', 'preco': 80.0, 'categoria': 'livros', 'estoque': 0},
    {'nome': 'Cadeira', 'preco': 300.0, 'categoria': 'móveis', 'estoque': 3},
    {'nome': 'Mesa', 'preco': 600.0, 'categoria': 'móveis', 'estoque': 2},
  ];
  
  // Processando produtos: eletrônicos em estoque com desconto
  var produtosProcessados = processarProdutos(
    produtos,
    filtro: (produto) => 
        produto['categoria'] == 'eletrônicos' && produto['estoque'] > 0,
    transformacao: (produto) => {
      ...produto,
      'precoPromocional': produto['preco'] * 0.9, // 10% desconto
      'disponivel': true
    }
  );
  
  print('Produtos eletrônicos em promoção:');
  for (var produto in produtosProcessados) {
    print('${produto['nome']}: R\$ ${produto['preco']} → R\$ ${produto['precoPromocional'].toStringAsFixed(2)}');
  }
  
  print('\n---\n');
  
  // Processando produtos: móveis caros com frete grátis
  var moveisCaros = processarProdutos(
    produtos,
    filtro: (produto) => 
        produto['categoria'] == 'móveis' && produto['preco'] > 400,
    transformacao: (produto) => {
      ...produto,
      'freteGratis': true,
      'prazoEntrega': '5-7 dias úteis'
    }
  );
  
  print('Móveis com frete grátis:');
  for (var produto in moveisCaros) {
    print('${produto['nome']}: R\$ ${produto['preco']} - Frete grátis!');
  }
}

List<Map<String, dynamic>> processarProdutos(
  List<Map<String, dynamic>> produtos, {
  required bool Function(Map<String, dynamic>) filtro,
  required Map<String, dynamic> Function(Map<String, dynamic>) transformacao
}) {
  return produtos
      .where(filtro)
      .map(transformacao)
      .toList();
}
