// Crie uma função que calcule o IMC (Índice de Massa Corporal) e retorne uma classificação. Use parâmetros nomeados e validação de entrada.

void main() {
  // Testando casos válidos
  print('IMC 18.4: ${classificarIMC(peso: 60, altura: 1.80)}');
  print('IMC 22.2: ${classificarIMC(peso: 80, altura: 1.90)}');
  print('IMC 27.8: ${classificarIMC(peso: 90, altura: 1.80)}');
  print('IMC 35.0: ${classificarIMC(peso: 100, altura: 1.70)}');
  
  // Testando validação de entrada
  try {
    print(classificarIMC(peso: -5, altura: 1.70));
  } catch (e) {
    print('Erro: $e');
  }
  
  try {
    print(classificarIMC(peso: 70, altura: 0));
  } catch (e) {
    print('Erro: $e');
  }
}

// Função que calcula IMC e retorna classificação
String classificarIMC({required double peso, required double altura}) {
  // Validação de entrada
  if (peso <= 0) throw ArgumentError('Peso deve ser maior que zero');
  if (altura <= 0) throw ArgumentError('Altura deve ser maior que zero');
  
  // Cálculo do IMC
  double imc = calcularIMC(peso: peso, altura: altura);
  
  // Classificação baseada no IMC
  if (imc < 18.5) return 'Abaixo do peso (IMC: ${imc.toStringAsFixed(1)})';
  if (imc < 25) return 'Peso normal (IMC: ${imc.toStringAsFixed(1)})';
  if (imc < 30) return 'Sobrepeso (IMC: ${imc.toStringAsFixed(1)})';
  if (imc < 35) return 'Obesidade grau I (IMC: ${imc.toStringAsFixed(1)})';
  if (imc < 40) return 'Obesidade grau II (IMC: ${imc.toStringAsFixed(1)})';
  return 'Obesidade grau III (IMC: ${imc.toStringAsFixed(1)})';
}

// Arrow function para cálculo do IMC
double calcularIMC({required double peso, required double altura}) => peso / (altura * altura);
