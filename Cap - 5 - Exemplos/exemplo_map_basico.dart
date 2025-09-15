void main() {
  // Criando map com informações de usuário
  Map<String, dynamic> usuario = {
    'nome': 'João Silva',
    'idade': 30,
    'email': 'joao@email.com',
    'ativo': true
  };
  
  print('Usuário: $usuario');
  print('Nome: ${usuario['nome']}');
  print('Idade: ${usuario['idade']}');
  
  // Adicionando nova chave
  usuario['telefone'] = '11999999999';
  
  // Modificando valor existente
  usuario['idade'] = 31;
  
  print('\nApós modificações: $usuario');
  
  // Verificando se chave existe
  if (usuario.containsKey('telefone')) {
    print('Telefone cadastrado: ${usuario['telefone']}');
  }
  
  // Iterando pelas chaves e valores
  print('\nTodos os dados:');
  usuario.forEach((chave, valor) {
    print('$chave: $valor');
  });
  
  // Obtendo todas as chaves
  print('\nChaves disponíveis: ${usuario.keys.toList()}');
  
  // Obtendo todos os valores
  print('Valores: ${usuario.values.toList()}');
  
  // Removendo chave
  usuario.remove('ativo');
  print('\nApós remover "ativo": $usuario');
}
