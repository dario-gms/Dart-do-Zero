void main() {
  // Declarações básicas
  int idade = 28;
  double altura = 1.75;
  String nome = "Carlos";
  bool ativo = true;
  
  // Usando var (inferência de tipo)
  var cidade = "Rio de Janeiro";
  var salario = 3500.50;
  
  // Constantes
  final agora = DateTime.now();
  const pi = 3.14159;
  
  // Exibindo valores
  print("Nome: $nome");
  print("Idade: $idade anos");
  print("Altura: ${altura}m");
  print("Ativo: $ativo");
  print("Cidade: $cidade");
  print("Salário: R\$ $salario");
  print("Agora: $agora");
  print("Pi: $pi");
}