/* Exercício 1: Classificador de notas
Crie um programa que receba uma nota de 0 a 100 e classifique usando if/else:

90-100: Excelente
80-89: Bom
70-79: Regular
60-69: Ruim
Abaixo de 60: Reprovado */

void main() {
  List<double> notas = [95.5, 87.0, 72.5, 63.0, 45.0];
  
  for (double nota in notas) {
    print('\nNota: $nota');
    
    if (nota >= 90 && nota <= 100) {
      print('Classificação: Excelente 🏆');
    } else if (nota >= 80) {
      print('Classificação: Bom 👍');
    } else if (nota >= 70) {
      print('Classificação: Regular 😐');
    } else if (nota >= 60) {
      print('Classificação: Ruim 👎');
    } else if (nota >= 0) {
      print('Classificação: Reprovado ❌');
    } else {
      print('Nota inválida!');
    }
  }
}