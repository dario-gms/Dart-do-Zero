// ignore_for_file: dead_code

void main() {
  String clima = 'ensolarado';
  int temperatura = 25;
  bool temGuardaChuva = true;
  
  // Operador AND (&&) - ambas condições devem ser verdadeiras
  if (clima == 'chuva' && !temGuardaChuva) {
    print('Melhor ficar em casa!');
  }
  
  // Operador OR (||) - pelo menos uma condição deve ser verdadeira
  if (temperatura > 30 || clima == 'muito quente') {
    print('Dia para ir à praia!');
  }
  
  // Múltiplas condições com else if
  if (temperatura < 10) {
    print('Está muito frio! Use casaco pesado.');
  } else if (temperatura < 20) {
    print('Está fresco. Uma blusa resolve.');
  } else if (temperatura < 30) {
    print('Temperatura agradável!');
  } else {
    print('Está muito quente! Hidrate-se bastante.');
  }
}