void main() {
  int idade = 18;
  
  // Condicional simples
  if (idade >= 18) {
    print('Você é maior de idade!');
  }
  
  // If com else
  if (idade >= 21) {
    print('Pode dirigir nos EUA');
  } else {
    print('Ainda não pode dirigir nos EUA');
  }
  
  // If aninhado (um if dentro do outro)
  if (idade >= 16) {
    print('Pode tirar habilitação no Brasil');
    if (idade >= 18) {
      print('E também votar!');
    }
  }
}