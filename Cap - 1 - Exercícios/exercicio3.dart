// Crie uma lista com os nomes de 5 frutas e imprima cada uma com uma mensagem de "Eu gosto de [fruta]".

void main() {
  List<String> frutas = ['Maçã', 'Banana', 'Laranja', 'Uva', 'Morango'];
  
  for (String fruta in frutas) {
    print('Eu gosto de $fruta');
  }
}