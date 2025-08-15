// Exercício 5

// Implemente um formatador de texto que receba uma string e retorne ela formatada com primeira letra maiúscula e o restante minúsculo.

void main() {
  String formatarTexto(String texto) {
    // Verificar se o texto não está vazio
    if (texto.isEmpty) {
      return "";
    }
    
    // Converter para minúsculas
    String textoMinusculo = texto.toLowerCase();
    
    // Primeira letra maiúscula + resto minúsculo
    String textoFormatado = textoMinusculo[0].toUpperCase() + 
                           textoMinusculo.substring(1);
    
    return textoFormatado;
  }
  
  // Função mais avançada que formata nomes próprios
  String formatarNomeProprio(String nomeCompleto) {
    if (nomeCompleto.isEmpty) {
      return "";
    }
    
    List<String> palavras = nomeCompleto.trim().split(' ');
    List<String> palavrasFormatadas = [];
    
    for (String palavra in palavras) {
      if (palavra.isNotEmpty) {
        // Palavras pequenas (preposições) ficam minúsculas, exceto a primeira
        if (palavra.length <= 2 && palavrasFormatadas.isNotEmpty) {
          palavrasFormatadas.add(palavra.toLowerCase());
        } else {
          palavrasFormatadas.add(formatarTexto(palavra));
        }
      }
    }
    
    return palavrasFormatadas.join(' ');
  }
  
  // Testes
  print("=== Formatador de Texto ===");
  print("'${formatarTexto("JOÃO")}'");
  print("'${formatarTexto("maria")}'");
  print("'${formatarTexto("pedro SILVA")}'");
  print("'${formatarTexto("")}'");
  
  print("\n=== Formatador de Nome Próprio ===");
  print("'${formatarNomeProprio("JOÃO DA SILVA")}'");
  print("'${formatarNomeProprio("maria de souza santos")}'");
  print("'${formatarNomeProprio("PEDRO DE OLIVEIRA")}'");
  print("'${formatarNomeProprio("ana")}'");
}