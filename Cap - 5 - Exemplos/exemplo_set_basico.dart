void main() {
  // Criando set de tags
  Set<String> tags = {'programacao', 'dart', 'iniciante'};
  
  print('Tags iniciais: $tags');
  
  // Tentando adicionar tag duplicada
  tags.add('dart'); // Não adiciona pois já existe
  print('Após tentar adicionar "dart" novamente: $tags');
  
  // Adicionando novas tags
  tags.add('flutter');
  tags.addAll(['mobile', 'web', 'programacao']); // 'programacao' já existe
  
  print('Tags após adições: $tags');
  print('Quantidade de tags: ${tags.length}');
  
  // Verificando se contém tag
  if (tags.contains('flutter')) {
    print('Tag flutter encontrada!');
  }
  
  // Criando outro set para operações
  Set<String> tagsPopulares = {'flutter', 'react', 'javascript', 'dart'};
  
  // Interseção (tags em comum)
  Set<String> tagsComuns = tags.intersection(tagsPopulares);
  print('Tags em comum: $tagsComuns');
  
  // União (todas as tags sem duplicatas)
  Set<String> todasTags = tags.union(tagsPopulares);
  print('Todas as tags: $todasTags');
  
  // Diferença (tags que estão no primeiro mas não no segundo)
  Set<String> tagsDiferentes = tags.difference(tagsPopulares);
  print('Tags diferentes: $tagsDiferentes');
  
  // Convertendo set para lista
  List<String> listaOrdenada = tags.toList()..sort();
  print('Tags ordenadas: $listaOrdenada');
}
