# Capítulo 2: Variáveis, Tipos Primitivos, Operadores, Comentários e Convenções de Nome

**Suposições:** Este capítulo assume Dart 3.0+ e que o leitor usa o DartPad para testar os exemplos.

## Objetivos do Capítulo

- Entender como criar e usar variáveis em Dart
- Conhecer os tipos primitivos fundamentais (int, double, String, bool)
- Aprender operadores aritméticos, lógicos e de comparação
- Dominar diferentes tipos de comentários no código
- Aplicar convenções de nomenclatura profissionais
- Trabalhar com interpolação de strings

## Pré-requisitos

- Conhecimento básico de programação (variáveis e funções)
- Acesso ao DartPad (https://dartpad.dev) ou Dart SDK 3.0+ instalado localmente
- Ter completado o Capítulo 1 (conceitos básicos de Dart)

## Sumário

1. [Variáveis e Declarações](#1-variáveis-e-declarações)
2. [Tipos Primitivos](#2-tipos-primitivos)
3. [Operadores](#3-operadores)
4. [Comentários](#4-comentários)
5. [Convenções de Nomenclatura](#5-convenções-de-nomenclatura)
6. [Exemplos Práticos](#6-exemplos-práticos)
7. [Boas Práticas](#7-boas-práticas)
8. [Casos de Uso Reais](#8-casos-de-uso-reais)
9. [Exercícios Práticos](#9-exercícios-práticos)

## 1. Variáveis e Declarações

Uma **variável** é como uma gaveta com etiqueta onde guardamos informações. Em Dart, podemos declarar variáveis de várias formas:

### Declaração Explícita
```dart
int idade = 25;        // Número inteiro
String nome = "Ana";   // Texto
```

### Declaração com `var`
```dart
var cidade = "São Paulo";  // Dart deduz que é String
var altura = 1.75;         // Dart deduz que é double
```

### Declaração com `final` e `const`
- **final**: valor definido uma vez durante execução
- **const**: valor definido na compilação (constante de tempo de compilação)

```dart
final dataAtual = DateTime.now();  // Definido na execução
const pi = 3.14159;               // Definido na compilação
```

## 2. Tipos Primitivos

Dart possui tipos fundamentais para representar dados básicos:

### int (Números Inteiros)
Representa números sem casas decimais: -10, 0, 42, 1000.

### double (Números Decimais)
Representa números com casas decimais: 3.14, -0.5, 100.0.

### String (Texto)
Representa sequências de caracteres: "Olá", 'Mundo', "123".

### bool (Verdadeiro/Falso)
Representa valores lógicos: `true` ou `false`.

## 3. Operadores

### Operadores Aritméticos
- `+` (soma), `-` (subtração), `*` (multiplicação)
- `/` (divisão), `~/` (divisão inteira), `%` (resto da divisão)

### Operadores de Comparação
- `==` (igual), `!=` (diferente)
- `>` (maior), `<` (menor), `>=` (maior ou igual), `<=` (menor ou igual)

### Operadores Lógicos
- `&&` (E lógico), `||` (OU lógico), `!` (NÃO lógico)

## 4. Comentários

### Comentário de Linha
```dart
// Este é um comentário de linha
int x = 10;  // Comentário ao lado do código
```

### Comentário de Bloco
```dart
/*
Este é um comentário
que ocupa múltiplas
linhas
*/
```

### Comentário de Documentação
```dart
/// Calcula a área de um retângulo
/// [largura] e [altura] devem ser positivos
double calcularArea(double largura, double altura) {
  return largura * altura;
}
```

## 5. Convenções de Nomenclatura

### Variáveis e Funções: camelCase
```dart
int idadeUsuario = 25;
String nomeCompleto = "João Silva";
void calcularDesconto() { }
```

### Classes: PascalCase
```dart
class ContaBancaria { }
class CalculadoraJuros { }
```

### Constantes: camelCase ou SCREAMING_SNAKE_CASE
```dart
const double pi = 3.14159;
const int MAX_TENTATIVAS = 3;
```

## 6. Exemplos Práticos

### Exemplo 1 — Variáveis Básicas e Tipos

```dart
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
```

**Arquivo sugerido:** `exemplo_variaveis_basicas.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_variaveis_basicas.dart`

**Explicação:** Este exemplo mostra diferentes formas de declarar variáveis. `int`, `double`, `String` e `bool` são declarados explicitamente. `var` permite que Dart deduza o tipo automaticamente. `final` cria uma variável que só pode ser definida uma vez durante a execução, enquanto `const` cria uma constante de compilação.

**Experimente:** Mude os valores das variáveis, tente atribuir um novo valor a `agora` ou `pi` e observe os erros.

### Exemplo 2 — Operadores Aritméticos

```dart
void main() {
  int a = 10;
  int b = 3;
  double x = 7.5;
  double y = 2.5;
  
  // Operações com inteiros
  print("=== Operações com Inteiros ===");
  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");      // Resultado é double
  print("$a ~/ $b = ${a ~/ b}");    // Divisão inteira
  print("$a % $b = ${a % b}");      // Resto da divisão
  
  // Operações com decimais
  print("\n=== Operações com Decimais ===");
  print("$x + $y = ${x + y}");
  print("$x - $y = ${x - y}");
  print("$x * $y = ${x * y}");
  print("$x / $y = ${x / y}");
  
  // Operações mistas
  print("\n=== Operações Mistas ===");
  print("$a + $x = ${a + x}");      // int + double = double
  print("$b * $y = ${b * y}");      // int * double = double
}
```

**Arquivo sugerido:** `exemplo_operadores_aritmeticos.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_operadores_aritmeticos.dart`

**Explicação:** Demonstra todos os operadores aritméticos. Note que `/` sempre retorna `double`, mesmo com inteiros. `~/` faz divisão inteira (descarta a parte decimal). `%` retorna o resto da divisão. Operações mistas (int com double) sempre resultam em `double`.

**Experimente:** Teste com números negativos, tente divisão por zero, mude os valores e observe os resultados.

### Exemplo 3 — Operadores de Comparação e Lógicos

```dart
void main() {
  int nota1 = 85;
  int nota2 = 92;
  int notaMinima = 70;
  bool temPresenca = true;
  bool pagouTaxa = false;
  
  print("=== Comparações ===");
  print("Nota 1: $nota1");
  print("Nota 2: $nota2");
  print("Nota mínima: $notaMinima");
  
  // Operadores de comparação
  print("\nNota 1 > Nota 2: ${nota1 > nota2}");
  print("Nota 1 >= Nota mínima: ${nota1 >= notaMinima}");
  print("Nota 2 == 92: ${nota2 == 92}");
  print("Nota 1 != Nota 2: ${nota1 != nota2}");
  
  print("\n=== Operadores Lógicos ===");
  print("Tem presença: $temPresenca");
  print("Pagou taxa: $pagouTaxa");
  
  // Operadores lógicos
  bool aprovado = (nota1 >= notaMinima) && temPresenca;
  bool podeMatricular = temPresenca && pagouTaxa;
  bool situacaoIrregular = !temPresenca || !pagouTaxa;
  
  print("\nAprovado (nota >= 70 E tem presença): $aprovado");
  print("Pode matricular (presença E taxa paga): $podeMatricular");
  print("Situação irregular (SEM presença OU SEM taxa): $situacaoIrregular");
  
  // Expressão complexa
  bool statusFinal = (nota1 >= notaMinima && nota2 >= notaMinima) && 
                     (temPresenca && pagouTaxa);
  print("\nStatus final (todas condições): $statusFinal");
}
```

**Arquivo sugerido:** `exemplo_comparacao_logica.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_comparacao_logica.dart`

**Explicação:** Mostra operadores de comparação (`>`, `>=`, `==`, `!=`) e lógicos (`&&`, `||`, `!`). Os operadores lógicos seguem a lógica booleana: `&&` precisa que ambos sejam verdadeiros, `||` precisa que pelo menos um seja verdadeiro, `!` inverte o valor.

**Experimente:** Mude os valores de `temPresenca` e `pagouTaxa`, altere as notas e observe como os resultados mudam.

### Exemplo 4 — Strings e Interpolação

```dart
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
```

**Arquivo sugerido:** `exemplo_strings.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_strings.dart`

**Explicação:** Demonstra criação de strings com aspas simples, duplas e triplas (multilinha). A interpolação permite inserir variáveis com `$variavel` ou expressões com `${expressao}`. Mostra métodos úteis de string como `length`, `toUpperCase()`, `contains()`.

**Experimente:** Teste diferentes caracteres especiais, crie strings multilinhas, use expressões mais complexas na interpolação.

### Exemplo 5 — Comentários e Documentação

```dart
/*
Este é um exemplo completo demonstrando
diferentes tipos de comentários em Dart
Autor: Equipe de Desenvolvimento
Data: 2024
*/

/// Classe que representa uma conta bancária
/// 
/// Esta classe encapsula informações básicas de uma conta
/// como titular, saldo e operações básicas
class ContaBancaria {
  String titular;
  double saldo;
  
  /// Construtor da conta bancária
  /// 
  /// [titular] deve ser um nome válido
  /// [saldo] deve ser maior ou igual a zero
  ContaBancaria(this.titular, this.saldo);
  
  /// Realiza um depósito na conta
  /// 
  /// [valor] deve ser positivo
  /// Retorna o novo saldo após o depósito
  double depositar(double valor) {
    // Validação de entrada
    if (valor <= 0) {
      print("Erro: Valor deve ser positivo");
      return saldo; // Retorna saldo atual sem alterar
    }
    
    saldo += valor; // Adiciona o valor ao saldo
    return saldo;
  }
}

void main() {
  // Criando uma nova conta
  var conta = ContaBancaria("João Silva", 1000.0);
  
  print("=== Sistema Bancário ===");
  print("Titular: ${conta.titular}");
  print("Saldo inicial: R\$ ${conta.saldo.toStringAsFixed(2)}");
  
  // Realizando operações
  double novoSaldo = conta.depositar(250.50);
  print("Após depósito: R\$ ${novoSaldo.toStringAsFixed(2)}");
  
  // Teste com valor inválido
  conta.depositar(-100); // Deve exibir erro
  
  /*
  Próximas funcionalidades a implementar:
  - Método de saque
  - Histórico de transações
  - Limites de conta
  */
  
  print("Saldo final: R\$ ${conta.saldo.toStringAsFixed(2)}");
}
```

**Arquivo sugerido:** `exemplo_comentarios.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_comentarios.dart`

**Explicação:** Demonstra os três tipos de comentários em Dart. Comentários de linha (`//`) para explicações rápidas, comentários de bloco (`/* */`) para descrições maiores, e comentários de documentação (`///`) que geram documentação automática da API.

**Experimente:** Adicione seus próprios comentários, teste diferentes estilos de documentação, remova comentários e veja como isso afeta a legibilidade.

### Exemplo 6 — Calculadora com Validações

```dart
void main() {
  // Simulando entrada de dados (no mundo real viria de input)
  double numero1 = 15.5;
  double numero2 = 4.2;
  String operacao = "+";
  
  // Função para realizar cálculos
  String calcular(double a, double b, String op) {
    // Realizando operações
    double resultado;
    String simbolo;
    
    switch (op.toLowerCase()) {
      case "+":
      case "soma":
        resultado = a + b;
        simbolo = "+";
        break;
      case "-":
      case "subtracao":
        resultado = a - b;
        simbolo = "-";
        break;
      case "*":
      case "multiplicacao":
        resultado = a * b;
        simbolo = "×";
        break;
      case "/":
      case "divisao":
        if (b == 0) {
          return "Erro: Divisão por zero não é permitida";
        }
        resultado = a / b;
        simbolo = "÷";
        break;
      default:
        return "Erro: Operação '$op' não reconhecida";
    }
    
    // Formatando resultado
    String resultadoFormatado = resultado % 1 == 0 
        ? resultado.toInt().toString()
        : resultado.toStringAsFixed(2);
    
    return "$a $simbolo $b = $resultadoFormatado";
  }
  
  // Testando diferentes casos
  print("=== Calculadora com Validações ===");
  print(calcular(numero1, numero2, operacao));
  print(calcular(10.0, 3.0, "divisao"));
  print(calcular(8.0, 2.0, "*"));
  print(calcular(100.0, 0.0, "/"));  // Teste divisão por zero
  print(calcular(7.0, 3.0, "xyz"));  // Teste operação inválida
  
  // Exemplo de uso com diferentes tipos
  print("\n=== Conversões e Tipos ===");
  int inteiro1 = 20;
  int inteiro2 = 7;
  
  print("Divisão normal: ${inteiro1 / inteiro2}");
  print("Divisão inteira: ${inteiro1 ~/ inteiro2}");
  print("Resto: ${inteiro1 % inteiro2}");
  
  // Convertendo tipos
  double doubleFromInt = inteiro1.toDouble();
  String stringFromInt = inteiro1.toString();
  
  print("Int para double: $doubleFromInt");
  print("Int para string: '$stringFromInt'");
  
  // Verificando tipos
  print("inteiro1 é int: ${inteiro1 is int}");
  print("doubleFromInt é double: ${doubleFromInt is double}");
}
```

**Arquivo sugerido:** `exemplo_calculadora_completa.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_calculadora_completa.dart`

**Explicação:** Este exemplo mais avançado combina todos os conceitos: tipos primitivos, operadores, validações e conversões. Mostra como criar uma função robusta que trata diferentes casos de erro e formata a saída adequadamente.

**Experimente:** Adicione novas operações (potência, raiz quadrada), teste com diferentes tipos de entrada, modifique a formatação dos resultados.

## 7. Boas Práticas

### Nomenclatura
- **Use nomes descritivos:** `idadeUsuario` em vez de `x`
- **Seja consistente:** sempre camelCase para variáveis
- **Evite abreviações:** `numeroTentativas` em vez de `numTent`

### Tipos
- **Prefira tipos explícitos** quando o contexto não for claro
- **Use `const`** para valores que nunca mudam
- **Use `final`** para valores definidos uma vez na execução

### Comentários
```dart
// ❌ Evitar - óbvio
int x = 5; // define x como 5

// ✅ Preferir - explica o propósito
int maxTentativasLogin = 5; // Limite de segurança para tentativas de login
```

### Constantes
```dart
// ❌ Evitar - valores mágicos
if (idade >= 18) { ... }

// ✅ Preferir - constante nomeada
const int idadeMaioridade = 18;
if (idade >= idadeMaioridade) { ... }
```

### Operadores
```dart
// ❌ Evitar - expressões complexas sem parênteses
bool resultado = idade > 18 && salario > 1000 || temExperiencia;

// ✅ Preferir - agrupamento claro
bool resultado = (idade > 18 && salario > 1000) || temExperiencia;
```

## 8. Casos de Uso Reais

### 1. Validação de Formulários Web
```dart
bool validarIdade(int idade) {
  return idade >= 0 && idade <= 120;
}

bool validarEmail(String email) {
  return email.contains('@') && email.length > 5;
}
```

### 2. Cálculos Financeiros em Apps
```dart
double calcularDesconto(double valor, double percentual) {
  return valor * (percentual / 100);
}

double calcularJurosSimples(double capital, double taxa, int tempo) {
  return capital * (taxa / 100) * tempo;
}
```

### 3. Formatação de Dados em Scripts CLI
```dart
String formatarMoeda(double valor) {
  return "R\$ ${valor.toStringAsFixed(2)}";
}

String formatarPorcentagem(double valor) {
  return "${(valor * 100).toStringAsFixed(1)}%";
}
```

## 9. Exercícios Práticos

### Exercício 1
Crie um programa que declare variáveis para nome, idade e salário de uma pessoa. Calcule e exiba:
- Salário anual
- Se a pessoa é maior de idade (>= 18)
- Uma apresentação formatada

### Exercício 2
Implemente uma função que receba dois números e uma operação, retornando uma String com o resultado ou mensagem de erro apropriada.

### Exercício 3
Crie um programa que calcule a área e perímetro de diferentes formas geométricas (retângulo, círculo, triângulo) usando constantes apropriadas.

### Exercício 4
Desenvolva um programa que simule o cálculo de média escolar com 3 notas, exibindo a média e se o aluno foi aprovado (>= 7.0).

### Exercício 5
Implemente um formatador de texto que receba uma string e retorne ela formatada com primeira letra maiúscula e o restante minúsculo.

---

## Gabaritos dos Exercícios

### Gabarito 1
```dart
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
```

### Gabarito 2
```dart
void main() {
  String calcularOperacao(double num1, double num2, String op) {
    double resultado;
    String operador;
    
    switch (op.toLowerCase()) {
      case "+":
        resultado = num1 + num2;
        operador = "+";
        break;
      case "-":
        resultado = num1 - num2;
        operador = "-";
        break;
      case "*":
        resultado = num1 * num2;
        operador = "×";
        break;
      case "/":
        if (num2 == 0) {
          return "Erro: Divisão por zero";
        }
        resultado = num1 / num2;
        operador = "÷";
        break;
      default:
        return "Erro: Operação '$op' não suportada";
    }
    
    return "$num1 $operador $num2 = ${resultado.toStringAsFixed(2)}";
  }
  
  // Testes
  print(calcularOperacao(10.5, 2.5, "+"));
  print(calcularOperacao(15.0, 3.0, "/"));
  print(calcularOperacao(8.0, 0.0, "/"));
  print(calcularOperacao(7.0, 3.0, "%"));
}
```

### Gabarito 3
```dart
void main() {
  const double pi = 3.14159;
  
  // Função para retângulo
  void calcularRetangulo(double largura, double altura) {
    double area = largura * altura;
    double perimetro = 2 * (largura + altura);
    
    print("=== Retângulo ===");
    print("Largura: ${largura}m");
    print("Altura: ${altura}m");
    print("Área: ${area}m²");
    print("Perímetro: ${perimetro}m");
  }
  
  // Função para círculo
  void calcularCirculo(double raio) {
    double area = pi * raio * raio;
    double perimetro = 2 * pi * raio;
    
    print("\n=== Círculo ===");
    print("Raio: ${raio}m");
    print("Área: ${area.toStringAsFixed(2)}m²");
    print("Perímetro: ${perimetro.toStringAsFixed(2)}m");
  }
  
  // Função para triângulo
  void calcularTriangulo(double base, double altura, double lado1, double lado2) {
    double area = (base * altura) / 2;
    double perimetro = base + lado1 + lado2;
    
    print("\n=== Triângulo ===");
    print("Base: ${base}m");
    print("Altura: ${altura}m");
    print("Área: ${area}m²");
    print("Perímetro: ${perimetro}m");
  }
  
  // Testando as funções
  calcularRetangulo(5.0, 3.0);
  calcularCirculo(2.5);
  calcularTriangulo(4.0, 3.0, 5.0, 5.0);
}
```

### Gabarito 4
```dart
void main() {
  void calcularMediaEscolar(double nota1, double nota2, double nota3) {
    // Calculando a média
    double media = (nota1 + nota2 + nota3) / 3;
    
    // Verificando aprovação
    bool aprovado = media >= 7.0;
    String status = aprovado ? "Aprovado" : "Reprovado";
    
    // Classificação da média
    String classificacao;
    if (media >= 9.0) {
      classificacao = "Excelente";
    } else if (media >= 8.0) {
      classificacao = "Ótimo";
    } else if (media >= 7.0) {
      classificacao = "Bom";
    } else if (media >= 6.0) {
      classificacao = "Regular";
    } else {
      classificacao = "Insuficiente";
    }
    
    // Exibindo resultado
    print("=== Boletim Escolar ===");
    print("Nota 1: ${nota1.toStringAsFixed(1)}");
    print("Nota 2: ${nota2.toStringAsFixed(1)}");
    print("Nota 3: ${nota3.toStringAsFixed(1)}");
    print("Média: ${media.toStringAsFixed(2)}");
    print("Status: $status");
    print("Classificação: $classificacao");
  }
  
  // Testando diferentes casos
  calcularMediaEscolar(8.5, 7.0, 9.2);
  print("");
  calcularMediaEscolar(5.5, 6.0, 6.8);
}
```

### Gabarito 5
```dart
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
```

---

## Resumo / Takeaways

1. **Variáveis** são declaradas com tipo explícito (`int x = 5`) ou `var` para inferência automática
2. **Tipos primitivos** fundamentais: `int`, `double`, `String`, `bool`
3. **Operadores aritméticos** básicos: `+`, `-`, `*`, `/`, `~/`, `%`
4. **Operadores de comparação**: `==`, `!=`, `>`, `<`, `>=`, `<=`
5. **Operadores lógicos**: `&&` (E), `||` (OU), `!` (NÃO)
6. **Comentários** de linha (`//`), bloco (`/* */`) e documentação (`///`)
7. **Convenções de nomenclatura**: camelCase para variáveis, PascalCase para classes
8. **String interpolation** com `$variavel` ou `${expressao}`
9. **Constantes** usar `const` para tempo de compilação e `final` para tempo de execução
10. **Validações** são essenciais para código robusto em produção

## Glossário

- **Variável**: Espaço na memória que armazena um valor com um nome identificador
- **Tipo primitivo**: Tipo básico de dado fornecido pela linguagem (int, double, String, bool)
- **Inferência de tipo**: Capacidade do Dart de determinar automaticamente o tipo de uma variável
- **Interpolação**: Inserção de valores de variáveis dentro de strings usando `# Capítulo 2: Variáveis, Tipos Primitivos, Operadores, Comentários e Convenções de Nome

**Suposições:** Este capítulo assume Dart 3.0+ e que o leitor usa o DartPad para testar os exemplos.

## Objetivos do Capítulo

- Entender como criar e usar variáveis em Dart
- Conhecer os tipos primitivos fundamentais (int, double, String, bool)
- Aprender operadores aritméticos, lógicos e de comparação
- Dominar diferentes tipos de comentários no código
- Aplicar convenções de nomenclatura profissionais
- Trabalhar com interpolação de strings

## Pré-requisitos

- Conhecimento básico de programação (variáveis e funções)
- Acesso ao DartPad (https://dartpad.dev) ou Dart SDK 3.0+ instalado localmente
- Ter completado o Capítulo 1 (conceitos básicos de Dart)

## Sumário

1. [Variáveis e Declarações](#1-variáveis-e-declarações)
2. [Tipos Primitivos](#2-tipos-primitivos)
3. [Operadores](#3-operadores)
4. [Comentários](#4-comentários)
5. [Convenções de Nomenclatura](#5-convenções-de-nomenclatura)
6. [Exemplos Práticos](#6-exemplos-práticos)
7. [Boas Práticas](#7-boas-práticas)
8. [Casos de Uso Reais](#8-casos-de-uso-reais)
9. [Exercícios Práticos](#9-exercícios-práticos)

## 1. Variáveis e Declarações

Uma **variável** é como uma gaveta com etiqueta onde guardamos informações. Em Dart, podemos declarar variáveis de várias formas:

### Declaração Explícita
```dart
int idade = 25;        // Número inteiro
String nome = "Ana";   // Texto
```

### Declaração com `var`
```dart
var cidade = "São Paulo";  // Dart deduz que é String
var altura = 1.75;         // Dart deduz que é double
```

### Declaração com `final` e `const`
- **final**: valor definido uma vez durante execução
- **const**: valor definido na compilação (constante de tempo de compilação)

```dart
final dataAtual = DateTime.now();  // Definido na execução
const pi = 3.14159;               // Definido na compilação
```

## 2. Tipos Primitivos

Dart possui tipos fundamentais para representar dados básicos:

### int (Números Inteiros)
Representa números sem casas decimais: -10, 0, 42, 1000.

### double (Números Decimais)
Representa números com casas decimais: 3.14, -0.5, 100.0.

### String (Texto)
Representa sequências de caracteres: "Olá", 'Mundo', "123".

### bool (Verdadeiro/Falso)
Representa valores lógicos: `true` ou `false`.

## 3. Operadores

### Operadores Aritméticos
- `+` (soma), `-` (subtração), `*` (multiplicação)
- `/` (divisão), `~/` (divisão inteira), `%` (resto da divisão)

### Operadores de Comparação
- `==` (igual), `!=` (diferente)
- `>` (maior), `<` (menor), `>=` (maior ou igual), `<=` (menor ou igual)

### Operadores Lógicos
- `&&` (E lógico), `||` (OU lógico), `!` (NÃO lógico)

## 4. Comentários

### Comentário de Linha
```dart
// Este é um comentário de linha
int x = 10;  // Comentário ao lado do código
```

### Comentário de Bloco
```dart
/*
Este é um comentário
que ocupa múltiplas
linhas
*/
```

### Comentário de Documentação
```dart
/// Calcula a área de um retângulo
/// [largura] e [altura] devem ser positivos
double calcularArea(double largura, double altura) {
  return largura * altura;
}
```

## 5. Convenções de Nomenclatura

### Variáveis e Funções: camelCase
```dart
int idadeUsuario = 25;
String nomeCompleto = "João Silva";
void calcularDesconto() { }
```

### Classes: PascalCase
```dart
class ContaBancaria { }
class CalculadoraJuros { }
```

### Constantes: camelCase ou SCREAMING_SNAKE_CASE
```dart
const double pi = 3.14159;
const int MAX_TENTATIVAS = 3;
```

## 6. Exemplos Práticos

### Exemplo 1 — Variáveis Básicas e Tipos

```dart
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
```

**Arquivo sugerido:** `exemplo_variaveis_basicas.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_variaveis_basicas.dart`

**Explicação:** Este exemplo mostra diferentes formas de declarar variáveis. `int`, `double`, `String` e `bool` são declarados explicitamente. `var` permite que Dart deduza o tipo automaticamente. `final` cria uma variável que só pode ser definida uma vez durante a execução, enquanto `const` cria uma constante de compilação.

**Experimente:** Mude os valores das variáveis, tente atribuir um novo valor a `agora` ou `pi` e observe os erros.

### Exemplo 2 — Operadores Aritméticos

```dart
void main() {
  int a = 10;
  int b = 3;
  double x = 7.5;
  double y = 2.5;
  
  // Operações com inteiros
  print("=== Operações com Inteiros ===");
  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");      // Resultado é double
  print("$a ~/ $b = ${a ~/ b}");    // Divisão inteira
  print("$a % $b = ${a % b}");      // Resto da divisão
  
  // Operações com decimais
  print("\n=== Operações com Decimais ===");
  print("$x + $y = ${x + y}");
  print("$x - $y = ${x - y}");
  print("$x * $y = ${x * y}");
  print("$x / $y = ${x / y}");
  
  // Operações mistas
  print("\n=== Operações Mistas ===");
  print("$a + $x = ${a + x}");      // int + double = double
  print("$b * $y = ${b * y}");      // int * double = double
}
```

**Arquivo sugerido:** `exemplo_operadores_aritmeticos.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_operadores_aritmeticos.dart`

**Explicação:** Demonstra todos os operadores aritméticos. Note que `/` sempre retorna `double`, mesmo com inteiros. `~/` faz divisão inteira (descarta a parte decimal). `%` retorna o resto da divisão. Operações mistas (int com double) sempre resultam em `double`.

**Experimente:** Teste com números negativos, tente divisão por zero, mude os valores e observe os resultados.

### Exemplo 3 — Operadores de Comparação e Lógicos

```dart
void main() {
  int nota1 = 85;
  int nota2 = 92;
  int notaMinima = 70;
  bool temPresenca = true;
  bool pagouTaxa = false;
  
  print("=== Comparações ===");
  print("Nota 1: $nota1");
  print("Nota 2: $nota2");
  print("Nota mínima: $notaMinima");
  
  // Operadores de comparação
  print("\nNota 1 > Nota 2: ${nota1 > nota2}");
  print("Nota 1 >= Nota mínima: ${nota1 >= notaMinima}");
  print("Nota 2 == 92: ${nota2 == 92}");
  print("Nota 1 != Nota 2: ${nota1 != nota2}");
  
  print("\n=== Operadores Lógicos ===");
  print("Tem presença: $temPresenca");
  print("Pagou taxa: $pagouTaxa");
  
  // Operadores lógicos
  bool aprovado = (nota1 >= notaMinima) && temPresenca;
  bool podeMatricular = temPresenca && pagouTaxa;
  bool situacaoIrregular = !temPresenca || !pagouTaxa;
  
  print("\nAprovado (nota >= 70 E tem presença): $aprovado");
  print("Pode matricular (presença E taxa paga): $podeMatricular");
  print("Situação irregular (SEM presença OU SEM taxa): $situacaoIrregular");
  
  // Expressão complexa
  bool statusFinal = (nota1 >= notaMinima && nota2 >= notaMinima) && 
                     (temPresenca && pagouTaxa);
  print("\nStatus final (todas condições): $statusFinal");
}
```

**Arquivo sugerido:** `exemplo_comparacao_logica.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_comparacao_logica.dart`

**Explicação:** Mostra operadores de comparação (`>`, `>=`, `==`, `!=`) e lógicos (`&&`, `||`, `!`). Os operadores lógicos seguem a lógica booleana: `&&` precisa que ambos sejam verdadeiros, `||` precisa que pelo menos um seja verdadeiro, `!` inverte o valor.

**Experimente:** Mude os valores de `temPresenca` e `pagouTaxa`, altere as notas e observe como os resultados mudam.

### Exemplo 4 — Strings e Interpolação

```dart
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
```

**Arquivo sugerido:** `exemplo_strings.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_strings.dart`

**Explicação:** Demonstra criação de strings com aspas simples, duplas e triplas (multilinha). A interpolação permite inserir variáveis com `$variavel` ou expressões com `${expressao}`. Mostra métodos úteis de string como `length`, `toUpperCase()`, `contains()`.

**Experimente:** Teste diferentes caracteres especiais, crie strings multilinhas, use expressões mais complexas na interpolação.

### Exemplo 5 — Comentários e Documentação

```dart
/*
Este é um exemplo completo demonstrando
diferentes tipos de comentários em Dart
Autor: Equipe de Desenvolvimento
Data: 2024
*/

/// Classe que representa uma conta bancária
/// 
/// Esta classe encapsula informações básicas de uma conta
/// como titular, saldo e operações básicas
class ContaBancaria {
  String titular;
  double saldo;
  
  /// Construtor da conta bancária
  /// 
  /// [titular] deve ser um nome válido
  /// [saldo] deve ser maior ou igual a zero
  ContaBancaria(this.titular, this.saldo);
  
  /// Realiza um depósito na conta
  /// 
  /// [valor] deve ser positivo
  /// Retorna o novo saldo após o depósito
  double depositar(double valor) {
    // Validação de entrada
    if (valor <= 0) {
      print("Erro: Valor deve ser positivo");
      return saldo; // Retorna saldo atual sem alterar
    }
    
    saldo += valor; // Adiciona o valor ao saldo
    return saldo;
  }
}

void main() {
  // Criando uma nova conta
  var conta = ContaBancaria("João Silva", 1000.0);
  
  print("=== Sistema Bancário ===");
  print("Titular: ${conta.titular}");
  print("Saldo inicial: R\$ ${conta.saldo.toStringAsFixed(2)}");
  
  // Realizando operações
  double novoSaldo = conta.depositar(250.50);
  print("Após depósito: R\$ ${novoSaldo.toStringAsFixed(2)}");
  
  // Teste com valor inválido
  conta.depositar(-100); // Deve exibir erro
  
  /*
  Próximas funcionalidades a implementar:
  - Método de saque
  - Histórico de transações
  - Limites de conta
  */
  
  print("Saldo final: R\$ ${conta.saldo.toStringAsFixed(2)}");
}
```

**Arquivo sugerido:** `exemplo_comentarios.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_comentarios.dart`

**Explicação:** Demonstra os três tipos de comentários em Dart. Comentários de linha (`//`) para explicações rápidas, comentários de bloco (`/* */`) para descrições maiores, e comentários de documentação (`///`) que geram documentação automática da API.

**Experimente:** Adicione seus próprios comentários, teste diferentes estilos de documentação, remova comentários e veja como isso afeta a legibilidade.

### Exemplo 6 — Calculadora com Validações

```dart
void main() {
  // Simulando entrada de dados (no mundo real viria de input)
  double numero1 = 15.5;
  double numero2 = 4.2;
  String operacao = "+";
  
  // Função para realizar cálculos
  String calcular(double a, double b, String op) {
    // Realizando operações
    double resultado;
    String simbolo;
    
    switch (op.toLowerCase()) {
      case "+":
      case "soma":
        resultado = a + b;
        simbolo = "+";
        break;
      case "-":
      case "subtracao":
        resultado = a - b;
        simbolo = "-";
        break;
      case "*":
      case "multiplicacao":
        resultado = a * b;
        simbolo = "×";
        break;
      case "/":
      case "divisao":
        if (b == 0) {
          return "Erro: Divisão por zero não é permitida";
        }
        resultado = a / b;
        simbolo = "÷";
        break;
      default:
        return "Erro: Operação '$op' não reconhecida";
    }
    
    // Formatando resultado
    String resultadoFormatado = resultado % 1 == 0 
        ? resultado.toInt().toString()
        : resultado.toStringAsFixed(2);
    
    return "$a $simbolo $b = $resultadoFormatado";
  }
  
  // Testando diferentes casos
  print("=== Calculadora com Validações ===");
  print(calcular(numero1, numero2, operacao));
  print(calcular(10.0, 3.0, "divisao"));
  print(calcular(8.0, 2.0, "*"));
  print(calcular(100.0, 0.0, "/"));  // Teste divisão por zero
  print(calcular(7.0, 3.0, "xyz"));  // Teste operação inválida
  
  // Exemplo de uso com diferentes tipos
  print("\n=== Conversões e Tipos ===");
  int inteiro1 = 20;
  int inteiro2 = 7;
  
  print("Divisão normal: ${inteiro1 / inteiro2}");
  print("Divisão inteira: ${inteiro1 ~/ inteiro2}");
  print("Resto: ${inteiro1 % inteiro2}");
  
  // Convertendo tipos
  double doubleFromInt = inteiro1.toDouble();
  String stringFromInt = inteiro1.toString();
  
  print("Int para double: $doubleFromInt");
  print("Int para string: '$stringFromInt'");
  
  // Verificando tipos
  print("inteiro1 é int: ${inteiro1 is int}");
  print("doubleFromInt é double: ${doubleFromInt is double}");
}
```

**Arquivo sugerido:** `exemplo_calculadora_completa.dart`  
**DartPad:** Cole e clique em Run  
**Local:** `dart run exemplo_calculadora_completa.dart`

**Explicação:** Este exemplo mais avançado combina todos os conceitos: tipos primitivos, operadores, validações e conversões. Mostra como criar uma função robusta que trata diferentes casos de erro e formata a saída adequadamente.

**Experimente:** Adicione novas operações (potência, raiz quadrada), teste com diferentes tipos de entrada, modifique a formatação dos resultados.

## 7. Boas Práticas

### Nomenclatura
- **Use nomes descritivos:** `idadeUsuario` em vez de `x`
- **Seja consistente:** sempre camelCase para variáveis
- **Evite abreviações:** `numeroTentativas` em vez de `numTent`

### Tipos
- **Prefira tipos explícitos** quando o contexto não for claro
- **Use `const`** para valores que nunca mudam
- **Use `final`** para valores definidos uma vez na execução

### Comentários
```dart
// ❌ Evitar - óbvio
int x = 5; // define x como 5

// ✅ Preferir - explica o propósito
int maxTentativasLogin = 5; // Limite de segurança para tentativas de login
```

### Constantes
```dart
// ❌ Evitar - valores mágicos
if (idade >= 18) { ... }

// ✅ Preferir - constante nomeada
const int idadeMaioridade = 18;
if (idade >= idadeMaioridade) { ... }
```

### Operadores
```dart
// ❌ Evitar - expressões complexas sem parênteses
bool resultado = idade > 18 && salario > 1000 || temExperiencia;

// ✅ Preferir - agrupamento claro
bool resultado = (idade > 18 && salario > 1000) || temExperiencia;
```

## 8. Casos de Uso Reais

### 1. Validação de Formulários Web
```dart
bool validarIdade(int idade) {
  return idade >= 0 && idade <= 120;
}

bool validarEmail(String email) {
  return email.contains('@') && email.length > 5;
}
```

### 2. Cálculos Financeiros em Apps
```dart
double calcularDesconto(double valor, double percentual) {
  return valor * (percentual / 100);
}

double calcularJurosSimples(double capital, double taxa, int tempo) {
  return capital * (taxa / 100) * tempo;
}
```

### 3. Formatação de Dados em Scripts CLI
```dart
String formatarMoeda(double valor) {
  return "R\$ ${valor.toStringAsFixed(2)}";
}

String formatarPorcentagem(double valor) {
  return "${(valor * 100).toStringAsFixed(1)}%";
}
```

## 9. Exercícios Práticos

### Exercício 1
Crie um programa que declare variáveis para nome, idade e salário de uma pessoa. Calcule e exiba:
- Salário anual
- Se a pessoa é maior de idade (>= 18)
- Uma apresentação formatada

### Exercício 2
Implemente uma função que receba dois números e uma operação, retornando uma String com o resultado ou mensagem de erro apropriada.

### Exercício 3
Crie um programa que calcule a área e perímetro de diferentes formas geométricas (retângulo, círculo, triângulo) usando constantes apropriadas.

### Exercício 4
Desenvolva um programa que simule o cálculo de média escolar com 3 notas, exibindo a média e se o aluno foi aprovado (>= 7.0).

### Exercício 5
Implemente um formatador de texto que receba uma string e retorne ela formatada com primeira letra maiúscula e o restante minúsculo.

---

## Gabaritos dos Exercícios

### Gabarito 1
```dart
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
```

### Gabarito 2
```dart
void main() {
  String calcularOperacao(double num1, double num2, String op) {
    double resultado;
    String operador;
    
    switch (op.toLowerCase()) {
      case "+":
        resultado = num1 + num2;
        operador = "+";
        break;
      case "-":
        resultado = num1 - num2;
        operador = "-";
        break;
      case "*":
        resultado = num1 * num2;
        operador = "×";
        break;
      case "/":
        if (num2 == 0) {
          return "Erro: Divisão por zero";
        }
        resultado = num1 / num2;
        operador = "÷";
        break;
      default:
        return "Erro: Operação '$op' não suportada";
    }
    
    return "$num1 $operador $num2 = ${resultado.toStringAsFixed(2)}";
  }
  
  // Testes
  print(calcularOperacao(10.5, 2.5, "+"));
  print(calcularOperacao(15.0, 3.0, "/"));
  print(calcularOperacao(8.0, 0.0, "/"));
  print(calcularOperacao(7.0, 3.0, "%"));
}
```

### Gabarito 3
```dart
void main() {
  const double pi = 3.14159;
  
  // Função para retângulo
  void calcularRetangulo(double largura, double altura) {
    double area = largura * altura;
    double perimetro = 2 * (largura + altura);
    
    print("=== Retângulo ===");
    print("Largura: ${largura}m");
    print("Altura: ${altura}m");
    print("Área: ${area}m²");
    print("Perímetro: ${perimetro}m");
  }
  
  // Função para círculo
  void calcularCirculo(double raio) {
    double area = pi * raio * raio;
    double perimetro = 2 * pi * raio;
    
    print("\n=== Círculo ===");
    print("Raio: ${raio}m");
    print("Área: ${area.toStringAsFixed(2)}m²");
    print("Perímetro: ${perimetro.toStringAsFixed(2)}m");
  }
  
  // Função para triângulo
  void calcularTriangulo(double base, double altura, double lado1, double lado2) {
    double area = (base * altura) / 2;
    double perimetro = base + lado1 + lado2;
    
    print("\n=== Triângulo ===");
    print("Base: ${base}m");
    print("Altura: ${altura}m");
    print("Área: ${area}m²");
    print("Perímetro: ${perimetro}m");
  }
  
  // Testando as funções
  calcularRetangulo(5.0, 3.0);
  calcularCirculo(2.5);
  calcularTriangulo(4.0, 3.0, 5.0, 5.0);
}
```

### Gabarito 4
```dart
void main() {
  void calcularMediaEscolar(double nota1, double nota2, double nota3) {
    // Calculando a média
    double media = (nota1 + nota2 + nota3) / 3;
    
    // Verificando aprovação
    bool aprovado = media >= 7.0;
    String status = aprovado ? "Aprovado" : "Reprovado";
    
    // Classificação da média
    String classificacao;
    if (media >= 9.0) {
      classificacao = "Excelente";
    } else if (media >= 8.0) {
      classificacao = "Ótimo";
    } else if (media >= 7.0) {
      classificacao = "Bom";
    } else if (media >= 6.0) {
      classificacao = "Regular";
    } else {
      classificacao = "Insuficiente";
    }
    
    // Exibindo resultado
    print("=== Boletim Escolar ===");
    print("Nota 1: ${nota1.toStringAsFixed(1)}");
    print("Nota 2: ${nota2.toStringAsFixed(1)}");
    print("Nota 3: ${nota3.toStringAsFixed(1)}");
    print("Média: ${media.toStringAsFixed(2)}");
    print("Status: $status");
    print("Classificação: $classificacao");
  }
  
  // Testando diferentes casos
  calcularMediaEscolar(8.5, 7.0, 9.2);
  print("");
  calcularMediaEscolar(5.5, 6.0, 6.8);
}
```

### Gabarito 5
```dart
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
```

- **camelCase**: Convenção onde primeira palavra é minúscula e demais iniciam maiúsculas
- **PascalCase**: Convenção onde todas as palavras iniciam com maiúscula
- **Operador ternário**: Expressão condicional na forma `condição ? valorSeVerdadeiro : valorSeFalso`
- **Constante**: Valor que não muda durante a execução do programa
- **Expressão**: Combinação de valores, variáveis e operadores que produz um resultado
- **Concatenação**: Junção de strings usando o operador `+`

## Referências Recomendadas

1. **Dart Language Tour - Variables**: https://dart.dev/language/variables
2. **Dart Language Tour - Built-in Types**: https://dart.dev/language/built-in-types
3. **Dart Language Tour - Operators**: https://dart.dev/language/operators
4. **Dart Style Guide**: https://dart.dev/effective-dart/style
5. **DartPad - Ambiente Online**: https://dartpad.dev

## Anotações Finais / Próximo Capítulo

Agora você domina os fundamentos de variáveis, tipos primitivos e operadores em Dart. Estes conceitos são a base para tudo que construiremos adiante. Pratique bastante no DartPad modificando os exemplos - a experimentação é fundamental para fixar o aprendizado.