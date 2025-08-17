// ignore_for_file: dead_code

void main() {
  // Diferentes formas de criar strings
  String nome = "Maria";
  String sobrenome = 'Silva';
  String empresa = """Tecnologia 
  e Inovação""";  // String multilinha
  
  int idade = 30;
  double salario = 4500.75;
  bool gerente = true;
  
  print("=== Interpolação de Strings ===");
  
  // Interpolação simples
  print("Nome: $nome $sobrenome");
  print("Idade: $idade anos");
  
  // Interpolação com expressões
  print("Salário: R\$ ${salario.toStringAsFixed(2)}");
  print("É gerente: ${gerente ? 'Sim' : 'Não'}");
  print("Empresa: $empresa");
  
  // Concatenação
  String nomeCompleto = nome + " " + sobrenome;
  print("Nome completo (concatenação): $nomeCompleto");
  
  // Operações com strings
  print("\n=== Operações com Strings ===");
  print("Tamanho do nome: ${nome.length}");
  print("Nome em maiúsculas: ${nome.toUpperCase()}");
  print("Nome em minúsculas: ${nome.toLowerCase()}");
  print("Contém 'Mar': ${nome.contains('Mar')}");
  
  // String com caracteres especiais
  String caminho = "C:\\Users\\Maria\\Documents";
  String url = 'https://exemplo.com/api';
  print("Caminho: $caminho");
  print("URL: $url");
  
  // Template complexo
  String relatorio = """
Relatório do Funcionário:
- Nome: $nome $sobrenome
- Idade: $idade anos
- Salário: R\$ ${salario.toStringAsFixed(2)}
- Cargo: ${gerente ? 'Gerente' : 'Funcionário'}
- Empresa: $empresa
""";
  print(relatorio);
}