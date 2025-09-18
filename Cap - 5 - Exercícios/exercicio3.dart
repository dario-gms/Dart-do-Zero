// Crie um sistema que gerencia tags de posts usando Set, permitindo operações de união e interseção.

// Requisitos:

// Dois sets de tags diferentes
// Operações: união, interseção, diferença
// Contagem de tags únicas

void main() {
  // Sets de tags de diferentes posts
  Set<String> tagsPost1 = {'programacao', 'dart', 'flutter', 'mobile', 'iniciante'};
  Set<String> tagsPost2 = {'programacao', 'javascript', 'web', 'react', 'iniciante'};
  Set<String> tagsPost3 = {'design', 'ui', 'ux', 'mobile', 'prototipagem'};
  
  print('=== SISTEMA DE GERENCIAMENTO DE TAGS ===\n');
  
  // Exibindo tags de cada post
  print('📝 POST 1: $tagsPost1');
  print('📝 POST 2: $tagsPost2');
  print('📝 POST 3: $tagsPost3\n');
  
  // União - todas as tags únicas
  Set<String> todasTags = tagsPost1.union(tagsPost2).union(tagsPost3);
  print('🔗 TODAS AS TAGS (${todasTags.length}): $todasTags');
  
  // Interseção entre Post 1 e Post 2
  Set<String> tagsComuns12 = tagsPost1.intersection(tagsPost2);
  print('🤝 TAGS EM COMUM (Post 1 e 2): $tagsComuns12');
  
  // Tags exclusivas do Post 1
  Set<String> exclusivasPost1 = tagsPost1.difference(tagsPost2);
  print('⭐ TAGS EXCLUSIVAS DO POST 1: $exclusivasPost1');
  
  // Tags exclusivas do Post 2
  Set<String> exclusivasPost2 = tagsPost2.difference(tagsPost1);
  print('⭐ TAGS EXCLUSIVAS DO POST 2: $exclusivasPost2');
  
  // Análise de popularidade das tags
  Map<String, int> popularidadeTags = {};
  
  // Contando ocorrências
  List<Set<String>> todosPosts = [tagsPost1, tagsPost2, tagsPost3];
  
  for (Set<String> tagsPost in todosPosts) {
    for (String tag in tagsPost) {
      popularidadeTags[tag] = (popularidadeTags[tag] ?? 0) + 1;
    }
  }
  
  print('\n📊 POPULARIDADE DAS TAGS:');
  
  // Ordenando por popularidade (convertendo para lista de MapEntry)
  List<MapEntry<String, int>> tagsOrdenadas = popularidadeTags.entries.toList();
  tagsOrdenadas.sort((a, b) => b.value.compareTo(a.value));
  
  for (MapEntry<String, int> entry in tagsOrdenadas) {
    String popularidade = entry.value == 3 ? '🔥' : 
                         entry.value == 2 ? '👍' : '⚡';
    print('$popularidade ${entry.key}: ${entry.value} posts');
  }
  
  // Tags mais populares (aparecem em 2+ posts)
  Set<String> tagsPopulares = {};
  popularidadeTags.forEach((tag, count) {
    if (count >= 2) {
      tagsPopulares.add(tag);
    }
  });
  
  print('\n🏆 TAGS POPULARES (2+ posts): $tagsPopulares');
  
  // Simulando adição de nova tag
  String novaTag = 'tutorial';
  print('\n➕ ADICIONANDO TAG "$novaTag" AO POST 1:');
  
  tagsPost1.add(novaTag);
  print('Post 1 atualizado: $tagsPost1');
  
  // Verificando se uma tag específica existe
  String tagBusca = 'programacao';
  int postsComTag = 0;
  
  for (Set<String> tags in [tagsPost1, tagsPost2, tagsPost3]) {
    if (tags.contains(tagBusca)) {
      postsComTag++;
    }
  }
  
  print('\n🔍 A tag "$tagBusca" aparece em $postsComTag posts');
  
  // Sugestão de tags relacionadas
  print('\n💡 TAGS RELACIONADAS A "$tagBusca":');
  Set<String> tagsRelacionadas = {};
  
  for (Set<String> tags in [tagsPost1, tagsPost2, tagsPost3]) {
    if (tags.contains(tagBusca)) {
      tagsRelacionadas.addAll(tags);
    }
  }
  
  tagsRelacionadas.remove(tagBusca); // Remove a própria tag
  print('Sugestões: $tagsRelacionadas');
}
