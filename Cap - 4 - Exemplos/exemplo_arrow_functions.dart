void main() {
  // Testando arrow functions
  print('Dobro de 5: ${dobrar(5)}');
  print('É par? ${ehPar(4)}');
  print('Quadrado de 3: ${quadrado(3)}');
  
  // Lista de números para testar
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  // Usando arrow functions com métodos de lista
  var pares = numeros.where((n) => n % 2 == 0).toList();
  var dobrados = numeros.map((n) => n * 2).toList();
  var soma = numeros.reduce((a, b) => a + b);
  
  print('Números originais: $numeros');
  print('Apenas pares: $pares');
  print('Dobrados: $dobrados');
  print('Soma total: $soma');
  
  // Validações rápidas
  print('Nome válido: ${validarNome("João")}');
  print('Email válido: ${validarEmail("test@example.com")}');
  
  // Operações matemáticas
  print('Máximo entre 10 e 20: ${maximo(10, 20)}');
  print('Área do círculo (r=3): ${areaCirculo(3).toStringAsFixed(2)}');
}

// Arrow functions simples
int dobrar(int numero) => numero * 2;
bool ehPar(int numero) => numero % 2 == 0;
int quadrado(int numero) => numero * numero;

// Arrow functions com validação
bool validarNome(String nome) => nome.isNotEmpty && nome.length >= 2;
bool validarEmail(String email) => email.contains('@') && email.contains('.');

// Arrow functions matemáticas
int maximo(int a, int b) => a > b ? a : b;
double areaCirculo(double raio) => 3.14159 * raio * raio;

// Arrow function com lógica mais complexa (mas ainda uma expressão)
String classificarIdade(int idade) => 
    idade < 13 ? 'Criança' :
    idade < 18 ? 'Adolescente' :
    idade < 60 ? 'Adulto' : 'Idoso';
