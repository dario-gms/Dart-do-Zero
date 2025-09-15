void main() {
  // Criando lista de compras
  List<String> listaCompras = ['Leite', 'Pão', 'Ovos'];
  
  // Adicionando itens
  listaCompras.add('Açúcar');
  listaCompras.addAll(['Café', 'Arroz']);
  
  print('Lista completa: $listaCompras');
  print('Primeiro item: ${listaCompras.first}');
  print('Último item: ${listaCompras.last}');
  print('Quantidade de itens: ${listaCompras.length}');
  
  // Acessando por índice
  print('Item na posição 2: ${listaCompras[2]}');
  
  // Verificando se contém item
  if (listaCompras.contains('Leite')) {
    print('Leite está na lista!');
  }
  
  // Removendo item
  listaCompras.remove('Pão');
  print('Após remover Pão: $listaCompras');
  
  // Iterando pela lista
  print('\nItens na lista:');
  for (String item in listaCompras) {
    print('- $item');
  }
}
