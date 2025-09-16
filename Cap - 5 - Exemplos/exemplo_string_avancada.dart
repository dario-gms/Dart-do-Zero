void main() {
  String texto = '  Aprendendo Dart é Muito Legal!  ';
  
  print('Texto original: "$texto"');
  print('Comprimento: ${texto.length}');
  
  // Limpeza e formatação
  String textoLimpo = texto.trim();
  print('Sem espaços nas bordas: "$textoLimpo"');
  
  String minuscula = textoLimpo.toLowerCase();
  print('Minúscula: "$minuscula"');
  
  String maiuscula = textoLimpo.toUpperCase();
  print('Maiúscula: "$maiuscula"');
  
  // Verificações
  print('Contém "Dart": ${textoLimpo.contains("Dart")}');
  print('Começa com "Aprendendo": ${textoLimpo.startsWith("Aprendendo")}');
  print('Termina com "Legal!": ${textoLimpo.endsWith("Legal!")}');
  
  // Substituições
  String textoSubstituido = textoLimpo.replaceAll('Dart', 'Flutter');
  print('Substituindo Dart por Flutter: "$textoSubstituido"');
  
  // Divisão em palavras
  List<String> palavras = textoLimpo.split(' ');
  print('Palavras: $palavras');
  print('Primeira palavra: ${palavras.first}');
  print('Última palavra: ${palavras.last}');
  
  // Substring (pedaço da string)
  String pedaco = textoLimpo.substring(0, 10);
  print('Primeiros 10 caracteres: "$pedaco"');
  
  // Interpolação avançada
  String nome = 'Maria';
  int idade = 25;
  String apresentacao = 'Olá, eu sou $nome e tenho $idade anos. '
      'No próximo ano terei ${idade + 1} anos!';
  print('Interpolação: $apresentacao');
  
  // Multilinha
  String poema = '''
Este é um texto
que possui múltiplas linhas
e preserva a formatação
original.
''';
  print('Texto multilinha: $poema');
  
  // Trabalhando com índices
  print('Primeiro caractere: ${textoLimpo[0]}');
  print('Último caractere: ${textoLimpo[textoLimpo.length - 1]}');
  
  // Iterando por caracteres
  print('Caracteres um por um:');
  for (int i = 0; i < textoLimpo.length; i++) {
    print('Posição $i: ${textoLimpo[i]}');
  }
}
