// Desenvolva um analisador de texto que conta palavras, caracteres e gera estatísticas usando String.

// Requisitos:

// Contar palavras, caracteres, linhas
// Palavra mais frequente
// Texto em maiúscula e minúscula

void main() {
  String texto = '''
Dart é uma linguagem de programação moderna e poderosa.
Ela foi criada pelo Google para desenvolvimento de aplicações.
Com Dart, você pode criar apps mobile, web e desktop.
A linguagem é fácil de aprender e muito versátil.
Dart possui recursos como null-safety e hot reload.

Exemplo de palindromo para saida: ovo.
''';
  
  print('=== PROCESSADOR DE TEXTO ===\n');
  
  print('📄 TEXTO ORIGINAL:');
  print('"$texto"');
  
  // Estatísticas básicas
  int totalCaracteres = texto.length;
  int caracteresComEspaco = texto.length;
  int caracteresSemEspaco = texto.replaceAll(' ', '').replaceAll('\n', '').length;
  
  // Contando linhas
  List<String> linhas = texto.trim().split('\n');
  int totalLinhas = linhas.where((linha) => linha.trim().isNotEmpty).length;
  
  // Contando palavras
  String textoLimpo = texto.replaceAll('\n', ' ').trim();
  List<String> palavras = textoLimpo.split(RegExp(r'\s+'));
  palavras = palavras.where((palavra) => palavra.isNotEmpty).toList();
  int totalPalavras = palavras.length;
  
  print('\n📊 ESTATÍSTICAS BÁSICAS:');
  print('Caracteres (com espaços): $caracteresComEspaco');
  print('Caracteres (sem espaços): $caracteresSemEspaco');
  print('Linhas: $totalLinhas');
  print('Palavras: $totalPalavras');
  print('Média de palavras por linha: ${(totalPalavras / totalLinhas).toStringAsFixed(1)}');
  
  // Análise de palavras
  print('\n📝 ANÁLISE DE PALAVRAS:');
  
  // Contagem de frequência
  Map<String, int> frequenciaPalavras = {};
  
  for (String palavra in palavras) {
    // Limpando pontuação e convertendo para minúscula
    String palavraLimpa = palavra.toLowerCase().replaceAll(RegExp(r'[.,!?;:]'), '');
    if (palavraLimpa.isNotEmpty) {
      frequenciaPalavras[palavraLimpa] = (frequenciaPalavras[palavraLimpa] ?? 0) + 1;
    }
  }
  
  // Palavra mais frequente
  String palavraMaisFrequente = '';
  int maiorFrequencia = 0;
  
  frequenciaPalavras.forEach((palavra, freq) {
    if (freq > maiorFrequencia) {
      maiorFrequencia = freq;
      palavraMaisFrequente = palavra;
    }
  });
  
  print('Palavra mais frequente: "$palavraMaisFrequente" ($maiorFrequencia vezes)');
  
  // Palavras únicas
  print('Palavras únicas: ${frequenciaPalavras.length}');
  
  // Top 5 palavras mais frequentes
  List<MapEntry<String, int>> palavrasOrdenadas = frequenciaPalavras.entries.toList();
  palavrasOrdenadas.sort((a, b) => b.value.compareTo(a.value));
  
  print('\n🏆 TOP 5 PALAVRAS MAIS FREQUENTES:');
  for (int i = 0; i < 5 && i < palavrasOrdenadas.length; i++) {
    MapEntry<String, int> entry = palavrasOrdenadas[i];
    print('${i + 1}. "${entry.key}": ${entry.value} vezes');
  }
  
  // Análise de comprimento de palavras
  List<int> comprimentos = palavras.map((palavra) {
    return palavra.replaceAll(RegExp(r'[.,!?;:]'), '').length;
  }).toList();
  
  int somaComprimentos = 0;
  for (int comp in comprimentos) {
    somaComprimentos += comp;
  }
  double mediaComprimento = somaComprimentos / comprimentos.length;
  
  comprimentos.sort();
  int menorPalavra = comprimentos.first;
  int maiorPalavra = comprimentos.last;
  
  print('\n📏 ANÁLISE DE COMPRIMENTO:');
  print('Comprimento médio das palavras: ${mediaComprimento.toStringAsFixed(1)} caracteres');
  print('Palavra mais curta: $menorPalavra caracteres');
  print('Palavra mais longa: $maiorPalavra caracteres');
  
  // Transformações do texto
  print('\n🔄 TRANSFORMAÇÕES:');
  print('MAIÚSCULAS: ${textoLimpo.toUpperCase()}');
  print('minúsculas: ${textoLimpo.toLowerCase()}');
  
  // Texto sem vogais (exemplo de manipulação)
  String textoSemVogais = textoLimpo.replaceAll(RegExp(r'[aeiouAEIOU]'), '*');
  print('Substituindo vogais por *: $textoSemVogais');
  
  // Contando vogais e consoantes
  int vogais = 0;
  int consoantes = 0;
  
  for (int i = 0; i < texto.length; i++) {
    String char = texto[i].toLowerCase();
    if (RegExp(r'[aeiou]').hasMatch(char)) {
      vogais++;
    } else if (RegExp(r'[bcdfghjklmnpqrstvwxyz]').hasMatch(char)) {
      consoantes++;
    }
  }
  
  print('\n🔤 CONTAGEM DE LETRAS:');
  print('Vogais: $vogais');
  print('Consoantes: $consoantes');
  print('Outros caracteres: ${totalCaracteres - vogais - consoantes}');
  
  // Palíndromo (palavra que lê igual de trás para frente)
  print('\n🔄 TESTE DE PALÍNDROMOS (palavras com 3+ letras):');
  for (String palavra in frequenciaPalavras.keys) {
    if (palavra.length >= 3) {
      String palavraInversa = palavra.split('').reversed.join('');
      if (palavra == palavraInversa) {
        print('Palíndromo encontrado: "$palavra"');
      }
    }
  }
}
