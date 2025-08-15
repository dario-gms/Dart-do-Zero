/* Exercício 1

Crie um programa que declare variáveis para nome, idade e salário de uma pessoa. Calcule e exiba:

    Salário anual
    Se a pessoa é maior de idade (>= 18)
    Uma apresentação formatada */

void main() {
  // Declaração das variáveis
  String nome = "Carlos Silva";
  int idade = 28;
  double salario = 3500.50;
  
  // Cálculos
  double salarioAnual = salario * 12;
  bool maiorIdade = idade >= 18;
  
  // Apresentação formatada
  print("=== Informações Pessoais ===");
  print("Nome: $nome");
  print("Idade: $idade anos");
  print("Salário mensal: R\$ ${salario.toStringAsFixed(2)}");
  print("Salário anual: R\$ ${salarioAnual.toStringAsFixed(2)}");
  print("Maior de idade: ${maiorIdade ? 'Sim' : 'Não'}");
  
  // Bonus: informação adicional
  String faixaEtaria = idade < 18 ? "Menor" : 
                      idade < 60 ? "Adulto" : "Idoso";
  print("Faixa etária: $faixaEtaria");
}