# Capítulo 4: Declaração de funções, parâmetros nomeados/posicionais, closures, arrow functions

**Suposições:** Este capítulo assume Dart 3.0+ para aproveitar recursos modernos de null-safety e sintaxe mais recente. Todos os exemplos são testáveis no DartPad.

## Objetivos do capítulo

- Compreender como declarar e usar funções em Dart
- Dominar parâmetros posicionais, nomeados e opcionais
- Entender o conceito de closures e sua aplicação prática
- Aplicar arrow functions para código mais conciso
- Implementar funções de alta ordem (higher-order functions)
- Reconhecer casos de uso reais no desenvolvimento

## Pré-requisitos

- Conhecimento básico de variáveis e tipos em Dart
- Familiaridade com operadores básicos
- Acesso ao DartPad (https://dartpad.dev) ou Dart SDK instalado localmente

## Sumário

1. [Fundamentos de Funções](#fundamentos-de-funções)
2. [Parâmetros Posicionais](#parâmetros-posicionais)
3. [Parâmetros Nomeados](#parâmetros-nomeados)
4. [Parâmetros Opcionais e Valores Padrão](#parâmetros-opcionais-e-valores-padrão)
5. [Arrow Functions](#arrow-functions)
6. [Closures](#closures)
7. [Funções de Alta Ordem](#funções-de-alta-ordem)
8. [Boas Práticas](#boas-práticas)
9. [Casos de Uso Reais](#casos-de-uso-reais)
10. [Exercícios Práticos](#exercícios-práticos)
11. [Resumo](#resumo)
12. [Glossário](#glossário)
13. [Referências](#referências)
14. [Próximo Capítulo](#próximo-capítulo)

## Fundamentos de Funções

Uma **função** é um bloco de código reutilizável que executa uma tarefa específica. Pense nela como uma "receita de bolo" - você define os ingredientes (parâmetros) e os passos (código), e pode usar essa receita quantas vezes quiser.

Em Dart, toda função retorna um valor. Se você não especificar um retorno, a função retorna `null` automaticamente.

### Exemplo 1 — Função Básica com Retorno

```dart
void main() {
  // Chamando nossa função personalizada
  String resultado = saudar('Maria');
  print(resultado);
  
  // Chamando função que calcula
  int soma = somar(10, 5);
  print('A soma é: $soma');
}

// Função que retorna uma String
String saudar(String nome) {
  return 'Olá, $nome! Bem-vindo ao Dart.';
}

// Função que retorna um int
int somar(int a, int b) {
  return a + b;
}
```

**Arquivo:** `exemplo_funcoes_basicas.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_funcoes_basicas.dart`

**Explicação:**
- `String saudar(String nome)` - declara uma função que recebe um parâmetro `nome` e retorna uma `String`
- `return` - palavra-chave que especifica o valor retornado pela função
- `int somar(int a, int b)` - função que recebe dois inteiros e retorna a soma
- As funções podem ser chamadas quantas vezes necessário

**Experimente:** Troque os valores passados para as funções e observe como os resultados mudam.

## Parâmetros Posicionais

**Parâmetros posicionais** são aqueles cuja ordem importa na chamada da função. É como fazer um sanduíche - primeiro o pão, depois o recheio, depois o pão de novo.

### Exemplo 2 — Parâmetros Posicionais Obrigatórios

```dart
void main() {
  // Ordem dos parâmetros é importante
  String ficha = criarFicha('João', 'Silva', 25);
  print(ficha);
  
  // Calculando área de retângulo
  double area = calcularArea(5.0, 3.0);
  print('Área: ${area.toStringAsFixed(2)} m²');
  
  // Testando divisão
  try {
    double resultado = dividir(10.0, 0.0);
    print('Resultado: $resultado');
  } catch (e) {
    print('Erro: $e');
  }
}

String criarFicha(String nome, String sobrenome, int idade) {
  return 'Nome: $nome $sobrenome, Idade: $idade anos';
}

double calcularArea(double largura, double altura) {
  return largura * altura;
}

double dividir(double dividendo, double divisor) {
  if (divisor == 0) {
    throw ArgumentError('Não é possível dividir por zero!');
  }
  return dividendo / divisor;
}
```

**Arquivo:** `exemplo_parametros_posicionais.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_parametros_posicionais.dart`

**Explicação:**
- A ordem dos argumentos na chamada deve corresponder à ordem dos parâmetros na declaração
- `throw ArgumentError()` - lança uma exceção quando algo está errado
- `try/catch` - captura e trata erros que podem acontecer

**Experimente:** Troque a ordem dos parâmetros na chamada e veja o que acontece.

## Parâmetros Nomeados

**Parâmetros nomeados** permitem especificar argumentos por nome, não por posição. É como pedir uma pizza - você pode dizer "quero calabresa com borda recheada" sem se preocupar com a ordem.

### Exemplo 3 — Parâmetros Nomeados

```dart
void main() {
  // Usando parâmetros nomeados - ordem não importa
  String perfil1 = criarPerfil(
    nome: 'Ana',
    idade: 30,
    profissao: 'Desenvolvedora',
    cidade: 'São Paulo'
  );
  
  String perfil2 = criarPerfil(
    profissao: 'Designer',
    nome: 'Carlos', 
    cidade: 'Rio de Janeiro',
    idade: 28
  );
  
  print(perfil1);
  print('---');
  print(perfil2);
  
  // Configurando uma conexão
  configurarConexao(
    host: 'localhost',
    porta: 8080,
    ssl: true,
    timeout: 5000
  );
}

String criarPerfil({
  required String nome,
  required int idade,
  required String profissao,
  required String cidade
}) {
  return '''
Perfil do Usuário:
- Nome: $nome
- Idade: $idade anos
- Profissão: $profissao
- Cidade: $cidade
''';
}

void configurarConexao({
  required String host,
  required int porta,
  bool ssl = false,
  int timeout = 3000
}) {
  print('Conectando em $host:$porta');
  print('SSL: ${ssl ? "Ativado" : "Desativado"}');
  print('Timeout: ${timeout}ms');
}
```

**Arquivo:** `exemplo_parametros_nomeados.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_parametros_nomeados.dart`

**Explicação:**
- `{required String nome}` - chaves indicam parâmetros nomeados
- `required` - torna o parâmetro obrigatório
- `ssl = false` - valor padrão quando não especificado
- A ordem dos argumentos na chamada não importa
- Código fica mais legível e autodocumentado

**Experimente:** Remova o `required` de algum parâmetro e veja o que acontece.

## Parâmetros Opcionais e Valores Padrão

Parâmetros opcionais tornam funções mais flexíveis. É como um controle remoto - você pode usar só os botões básicos ou todos os recursos avançados.

### Exemplo 4 — Parâmetros Opcionais Posicionais e Nomeados

```dart
void main() {
  // Parâmetros opcionais posicionais
  print(formatarMoeda(100.50));
  print(formatarMoeda(100.50, 'USD'));
  print(formatarMoeda(100.50, 'EUR', 3));
  
  print('---');
  
  // Parâmetros opcionais nomeados
  enviarEmail(
    para: 'usuario@example.com',
    assunto: 'Bem-vindo!'
  );
  
  enviarEmail(
    para: 'cliente@empresa.com',
    assunto: 'Confirmação de Pedido',
    corpo: 'Seu pedido foi confirmado com sucesso!',
    prioridade: 'alta'
  );
  
  // Criando URLs flexíveis
  print(construirUrl('api.exemplo.com'));
  print(construirUrl('api.exemplo.com', porta: 8080));
  print(construirUrl('api.exemplo.com', ssl: false, porta: 3000));
}

// Parâmetros opcionais posicionais (entre colchetes)
String formatarMoeda(double valor, [String moeda = 'BRL', int decimais = 2]) {
  String simbolo = moeda == 'BRL' ? 'R\$' : 
                   moeda == 'USD' ? '\$' : 
                   moeda == 'EUR' ? '€' : moeda;
  
  return '$simbolo ${valor.toStringAsFixed(decimais)}';
}

// Parâmetros opcionais nomeados
void enviarEmail({
  required String para,
  required String assunto,
  String corpo = 'Mensagem vazia',
  String prioridade = 'normal'
}) {
  print('📧 Email enviado:');
  print('Para: $para');
  print('Assunto: $assunto');
  print('Corpo: $corpo');
  print('Prioridade: $prioridade');
  print('');
}

String construirUrl(String host, {bool ssl = true, int? porta}) {
  String protocolo = ssl ? 'https' : 'http';
  String portaStr = porta != null ? ':$porta' : '';
  
  return '$protocolo://$host$portaStr';
}
```

**Arquivo:** `exemplo_parametros_opcionais.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_parametros_opcionais.dart`

**Explicação:**
- `[String moeda = 'BRL']` - parâmetros opcionais posicionais entre colchetes
- `{String corpo = 'Mensagem vazia'}` - parâmetros opcionais nomeados
- `int? porta` - parâmetro pode ser nulo (null-safe)
- Valores padrão são usados quando argumentos não são fornecidos

**Experimente:** Chame as funções omitindo diferentes parâmetros opcionais.

## Arrow Functions

**Arrow functions** (funções de seta) são uma forma concisa de escrever funções simples. É como usar uma calculadora básica ao invés de uma científica quando você só precisa somar.

### Exemplo 5 — Arrow Functions

```dart
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
```

**Arquivo:** `exemplo_arrow_functions.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_arrow_functions.dart`

**Explicação:**
- `=>` substitui `{ return ... }` para funções de uma expressão
- Arrow functions são ideais para operações simples e diretas
- `where()`, `map()`, `reduce()` são métodos que aceitam funções como parâmetro
- Operador ternário `?:` funciona bem com arrow functions
- Código fica mais limpo e conciso

**Experimente:** Converta algumas arrow functions de volta para a sintaxe tradicional e compare.

## Closures

**Closures** são funções que "capturam" variáveis do escopo onde foram criadas. É como uma mochila - a função carrega consigo as variáveis que precisa, mesmo quando usada em outro lugar.

### Exemplo 6 — Closures

```dart
void main() {
  // Criando contadores independentes
  var contador1 = criarContador();
  var contador2 = criarContador();
  
  print('Contador 1: ${contador1()}'); // 1
  print('Contador 1: ${contador1()}'); // 2
  print('Contador 2: ${contador2()}'); // 1 (independente!)
  print('Contador 1: ${contador1()}'); // 3
  
  print('---');
  
  // Multiplicador personalizável
  var dobrar = criarMultiplicador(2);
  var triplicar = criarMultiplicador(3);
  
  print('Dobrar 5: ${dobrar(5)}');
  print('Triplicar 4: ${triplicar(4)}');
  
  print('---');
  
  // Sistema de configuração
  var configuracao = criarConfigurador();
  configuracao('host', 'localhost');
  configuracao('porta', '8080');
  configuracao('debug', 'true');
  
  var obterConfig = configuracao('', ''); // Função para obter configurações
  print('Host: ${obterConfig('host')}');
  print('Porta: ${obterConfig('porta')}');
  
  print('---');
  
  // Validador customizável
  var validarIdade = criarValidador(18, 'Deve ser maior de idade');
  var validarNota = criarValidador(7.0, 'Nota mínima é 7.0');
  
  print(validarIdade(20)); // null (válido)
  print(validarIdade(16)); // Mensagem de erro
  print(validarNota(8.5)); // null (válido)
  print(validarNota(5.0)); // Mensagem de erro
}

// Closure que mantém estado de um contador
Function criarContador() {
  int contador = 0; // Variável capturada
  
  return () {
    contador++; // Modifica a variável capturada
    return contador;
  };
}

// Closure que cria multiplicadores personalizados
Function(int) criarMultiplicador(int fator) {
  return (int numero) => numero * fator; // 'fator' é capturado
}

// Closure para sistema de configuração simples
Function criarConfigurador() {
  Map<String, String> configuracoes = {}; // Estado capturado
  
  return (String chave, String valor) {
    if (chave.isEmpty) {
      // Retorna função para obter configurações
      return (String key) => configuracoes[key];
    } else {
      // Define configuração
      configuracoes[chave] = valor;
      print('Configurado: $chave = $valor');
    }
  };
}

// Closure para validação personalizável
Function criarValidador(num minimo, String mensagem) {
  return (num valor) {
    if (valor >= minimo) {
      return null; // Válido
    } else {
      return mensagem; // Inválido
    }
  };
}
```

**Arquivo:** `exemplo_closures.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_closures.dart`

**Explicação:**
- Closures "capturam" variáveis do escopo externo (`contador`, `fator`, `configuracoes`)
- Cada closure mantém sua própria cópia das variáveis capturadas
- As variáveis capturadas persistem mesmo após a função externa terminar
- Closures são úteis para criar funções especializadas e manter estado privado
- `Function` é o tipo base para qualquer função em Dart

**Experimente:** Crie múltiplos contadores e veja como cada um mantém seu estado independente.

## Funções de Alta Ordem

**Funções de alta ordem** (higher-order functions) são funções que recebem outras funções como parâmetros ou retornam funções. É como ter um assistente que pode aprender novos truques.

### Exemplo 7 — Funções de Alta Ordem

```dart
void main() {
  // Lista para demonstrações
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  // Aplicando diferentes transformações
  print('Números originais: $numeros');
  print('Dobrados: ${aplicarTransformacao(numeros, dobrar)}');
  print('Ao quadrado: ${aplicarTransformacao(numeros, (n) => n * n)}');
  print('Negativos: ${aplicarTransformacao(numeros, (n) => -n)}');
  
  print('---');
  
  // Filtrando com diferentes critérios
  print('Pares: ${filtrarLista(numeros, ehPar)}');
  print('Maiores que 5: ${filtrarLista(numeros, (n) => n > 5)}');
  print('Múltiplos de 3: ${filtrarLista(numeros, (n) => n % 3 == 0)}');
  
  print('---');
  
  // Operações de redução
  print('Soma: ${reduzirLista(numeros, (a, b) => a + b)}');
  print('Produto: ${reduzirLista(numeros, (a, b) => a * b)}');
  print('Máximo: ${reduzirLista(numeros, (a, b) => a > b ? a : b)}');
  
  print('---');
  
  // Pipeline de operações
  var resultado = processar(
    numeros,
    filtro: (n) => n % 2 == 0,
    transformacao: (n) => n * n,
    reducao: (a, b) => a + b
  );
  print('Pipeline (pares -> quadrados -> soma): $resultado');
  
  print('---');
  
  // Sistema de cache com função personalizada
  var fibonacci = comCache(calcularFibonacci);
  
  print('Fibonacci(10): ${fibonacci(10)}');
  print('Fibonacci(10) novamente: ${fibonacci(10)}'); // Vem do cache
  print('Fibonacci(15): ${fibonacci(15)}');
}

// Função que recebe outra função como parâmetro
List<int> aplicarTransformacao(List<int> lista, int Function(int) transformacao) {
  return lista.map(transformacao).toList();
}

// Função para filtrar com critério personalizado
List<int> filtrarLista(List<int> lista, bool Function(int) criterio) {
  return lista.where(criterio).toList();
}

// Função para reduzir lista com operação personalizada
int reduzirLista(List<int> lista, int Function(int, int) operacao) {
  return lista.reduce(operacao);
}

// Pipeline de processamento
int processar(
  List<int> lista, {
  required bool Function(int) filtro,
  required int Function(int) transformacao,
  required int Function(int, int) reducao
}) {
  return lista
    .where(filtro)
    .map(transformacao)
    .reduce(reducao);
}

// Função que retorna função (decorator pattern)
Function comCache(Function funcaoOriginal) {
  Map<dynamic, dynamic> cache = {};
  
  return (dynamic parametro) {
    if (cache.containsKey(parametro)) {
      print('Cache hit para $parametro');
      return cache[parametro];
    }
    
    var resultado = funcaoOriginal(parametro);
    cache[parametro] = resultado;
    print('Calculado e armazenado no cache: $parametro = $resultado');
    return resultado;
  };
}

// Funções auxiliares
int dobrar(int n) => n * 2;
bool ehPar(int n) => n % 2 == 0;

// Função custosa para demonstrar cache
int calcularFibonacci(int n) {
  if (n <= 1) return n;
  return calcularFibonacci(n - 1) + calcularFibonacci(n - 2);
}
```

**Arquivo:** `exemplo_funcoes_alta_ordem.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_funcoes_alta_ordem.dart`

**Explicação:**
- `int Function(int)` especifica o tipo de uma função que recebe int e retorna int
- Higher-order functions permitem código mais flexível e reutilizável
- `map()`, `where()`, `reduce()` são exemplos nativos do Dart
- Cache com closures demonstra padrões avançados de programação
- Pipeline permite encadear operações de forma elegante

**Experimente:** Crie suas próprias funções de transformação e teste no pipeline.

## Boas Práticas

### Nomes Descritivos e Consistência

```dart
void main() {
  // ✅ BOM: nomes descritivos
  double preco = calcularPrecoComDesconto(100.0, 0.1);
  bool dadosValidos = validarFormularioUsuario('João', 'joao@email.com', 25);
  
  // ❌ EVITAR: nomes genéricos
  // double calc(double x, double y) { ... }
  // bool check(String a, String b, int c) { ... }
  
  print('Preço com desconto: R\$ ${preco.toStringAsFixed(2)}');
  print('Dados válidos: $dadosValidos');
}

double calcularPrecoComDesconto(double precoOriginal, double percentualDesconto) {
  if (percentualDesconto < 0 || percentualDesconto > 1) {
    throw ArgumentError('Desconto deve estar entre 0 e 1');
  }
  return precoOriginal * (1 - percentualDesconto);
}

bool validarFormularioUsuario(String nome, String email, int idade) {
  return nome.isNotEmpty && 
         email.contains('@') && 
         idade >= 0 && idade <= 120;
}
```

### Tratamento de Erros e Validações

```dart
void main() {
  try {
    print(dividirSeguro(10, 2));
    print(dividirSeguro(10, 0)); // Vai lançar exceção
  } catch (e) {
    print('Erro capturado: $e');
  }
  
  // Exemplo com validação de entrada
  print(processarIdade(25));
  print(processarIdade(-5)); // Retorna mensagem de erro
}

double dividirSeguro(double dividendo, double divisor) {
  if (divisor == 0) {
    throw ArgumentError('Divisão por zero não é permitida');
  }
  return dividendo / divisor;
}

String processarIdade(int idade) {
  // ✅ BOM: validação no início
  if (idade < 0 || idade > 150) {
    return 'Idade inválida';
  }
  
  // Lógica principal depois da validação
  if (idade < 18) {
    return 'Menor de idade';
  } else if (idade < 65) {
    return 'Adulto';
  } else {
    return 'Terceira idade';
  }
}
```

**Arquivo:** `exemplo_boas_praticas.dart`  
**DartPad:** Cole e clique em Run  
**Teste local:** `dart run exemplo_boas_praticas.dart`

### Dicas Importantes:

1. **Funções pequenas e focadas** - cada função deve fazer apenas uma coisa
2. **Validar parâmetros** - sempre verifique se os dados de entrada são válidos
3. **Usar null-safety** - aproveite os recursos do Dart 3.0+
4. **Documentar funções complexas** - use comentários para explicar lógicas não óbvias
5. **Consistência nos nomes** - use convenções claras (verbos para ações, substantivos para dados)

## Casos de Uso Reais

### 1. Validação de Formulários Web

Em aplicações web e mobile, funções são essenciais para validar dados do usuário:

```dart
// Validadores reutilizáveis para formulários
bool validarEmail(String email) => 
    email.contains('@') && email.contains('.') && email.length > 5;

bool validarSenha(String senha) => 
    senha.length >= 8 && senha.contains(RegExp(r'[0-9]'));

String? validarCampoObrigatorio(String? valor, String nomeCampo) {
  if (valor == null || valor.trim().isEmpty) {
    return '$nomeCampo é obrigatório';
  }
  return null;
}
```

### 2. Processamento de APIs e Dados

Funções de alta ordem são muito usadas para processar respostas de APIs:

```dart
// Simulando processamento de dados de uma API
List<Map<String, dynamic>> processarUsuarios(
  List<Map<String, dynamic>> usuarios,
  bool Function(Map<String, dynamic>) filtro,
  Map<String, dynamic> Function(Map<String, dynamic>) transformacao
) {
  return usuarios
      .where(filtro)
      .map(transformacao)
      .toList();
}
```

### 3. Configuração de Aplicações

Closures são ideais para sistemas de configuração:

```dart
// Sistema de configuração para apps
Function criarGerenciadorConfig() {
  Map<String, dynamic> config = {
    'apiUrl': 'https://api.exemplo.com',
    'timeout': 5000,
    'debug': false
  };
  
  return (String chave, [dynamic valor]) {
    if (valor != null) {
      config[chave] = valor;
    }
    return config[chave];
  };
}
```

## Exercícios Práticos

### Exercício 1
Crie uma função que calcule o IMC (Índice de Massa Corporal) e retorne uma classificação. Use parâmetros nomeados e validação de entrada.

### Exercício 2
Implemente uma calculadora usando arrow functions para as operações básicas (+, -, *, /).

### Exercício 3
Crie um sistema de desconto usando closures que permita configurar diferentes tipos de desconto (percentual, valor fixo, progressivo).

### Exercício 4
Desenvolva uma função de alta ordem que processe uma lista de produtos, aplicando filtros e transformações personalizáveis.

### Exercício 5
Implemente um sistema de cache simples usando closures que funcione com qualquer tipo de função.

## Gabaritos dos Exercícios

### Gabarito Exercício 1

```dart
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
```

### Gabarito Exercício 2

```dart
void main() {
  // Testando operações básicas
  print('5 + 3 = ${somar(5, 3)}');
  print('10 - 4 = ${subtrair(10, 4)}');
  print('6 * 7 = ${multiplicar(6, 7)}');
  print('15 / 3 = ${dividir(15, 3)}');
  
  // Testando divisão por zero
  try {
    print('10 / 0 = ${dividir(10, 0)}');
  } catch (e) {
    print('Erro: $e');
  }
  
  // Usando a calculadora com operação personalizada
  double resultado = calcular(10, 5, multiplicar);
  print('Calculadora: 10 * 5 = $resultado');
}

// Arrow functions para operações básicas
double somar(double a, double b) => a + b;
double subtrair(double a, double b) => a - b;
double multiplicar(double a, double b) => a * b;
double dividir(double a, double b) => b != 0 ? a / b : throw ArgumentError('Divisão por zero');

// Função que recebe operação como parâmetro
double calcular(double a, double b, double Function(double, double) operacao) => operacao(a, b);
```

**Arquivo:** `gabarito_exercicio_2.dart`  
**DartPad:** Cole e clique em Run

### Gabarito Exercício 3

```dart
void main() {
  // Criando diferentes tipos de desconto
  var descontoPercentual = criarDesconto('percentual', 0.1); // 10%
  var descontoFixo = criarDesconto('fixo', 50.0); // R$ 50
  var descontoProgressivo = criarDesconto('progressivo', 100.0); // A cada R$ 100, 5% desconto
  
  double preco = 500.0;
  
  print('Preço original: R\$ ${preco.toStringAsFixed(2)}');
  print('Com desconto percentual: R\$ ${descontoPercentual(preco).toStringAsFixed(2)}');
  print('Com desconto fixo: R\$ ${descontoFixo(preco).toStringAsFixed(2)}');
  print('Com desconto progressivo: R\$ ${descontoProgressivo(preco).toStringAsFixed(2)}');
}

Function(double) criarDesconto(String tipo, double valor) {
  switch (tipo) {
    case 'percentual':
      return (double preco) => preco * (1 - valor); // valor é percentual (0.1 = 10%)
    
    case 'fixo':
      return (double preco) => preco > valor ? preco - valor : 0.0; // desconto fixo
    
    case 'progressivo':
      return (double preco) {
        int faixas = (preco / valor).floor(); // quantas faixas de R$ valor
        double percentualDesconto = faixas * 0.05; // 5% por faixa
        percentualDesconto = percentualDesconto > 0.3 ? 0.3 : percentualDesconto; // máximo 30%
        return preco * (1 - percentualDesconto);
      };
    
    default:
      return (double preco) => preco; // sem desconto
  }
}
```

**Arquivo:** `gabarito_exercicio_3.dart`  
**DartPad:** Cole e clique em Run

### Gabarito Exercício 4

```dart
void main() {
  // Lista de produtos simulada
  List<Map<String, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 2500.0, 'categoria': 'eletrônicos', 'estoque': 5},
    {'nome': 'Mouse', 'preco': 50.0, 'categoria': 'eletrônicos', 'estoque': 20},
    {'nome': 'Livro Dart', 'preco': 80.0, 'categoria': 'livros', 'estoque': 0},
    {'nome': 'Cadeira', 'preco': 300.0, 'categoria': 'móveis', 'estoque': 3},
    {'nome': 'Mesa', 'preco': 600.0, 'categoria': 'móveis', 'estoque': 2},
  ];
  
  // Processando produtos: eletrônicos em estoque com desconto
  var produtosProcessados = processarProdutos(
    produtos,
    filtro: (produto) => 
        produto['categoria'] == 'eletrônicos' && produto['estoque'] > 0,
    transformacao: (produto) => {
      ...produto,
      'precoPromocional': produto['preco'] * 0.9, // 10% desconto
      'disponivel': true
    }
  );
  
  print('Produtos eletrônicos em promoção:');
  for (var produto in produtosProcessados) {
    print('${produto['nome']}: R\$ ${produto['preco']} → R\$ ${produto['precoPromocional'].toStringAsFixed(2)}');
  }
  
  print('\n---\n');
  
  // Processando produtos: móveis caros com frete grátis
  var moveisCaros = processarProdutos(
    produtos,
    filtro: (produto) => 
        produto['categoria'] == 'móveis' && produto['preco'] > 400,
    transformacao: (produto) => {
      ...produto,
      'freteGratis': true,
      'prazoEntrega': '5-7 dias úteis'
    }
  );
  
  print('Móveis com frete grátis:');
  for (var produto in moveisCaros) {
    print('${produto['nome']}: R\$ ${produto['preco']} - Frete grátis!');
  }
}

List<Map<String, dynamic>> processarProdutos(
  List<Map<String, dynamic>> produtos, {
  required bool Function(Map<String, dynamic>) filtro,
  required Map<String, dynamic> Function(Map<String, dynamic>) transformacao
}) {
  return produtos
      .where(filtro)
      .map(transformacao)
      .toList();
}
```

**Arquivo:** `gabarito_exercicio_4.dart`  
**DartPad:** Cole e clique em Run

### Gabarito Exercício 5

```dart
void main() {
  // Cache para função matemática
  var fibonacciComCache = criarCache(fibonacci);
  
  print('=== Testando Cache com Fibonacci ===');
  print('fibonacci(10): ${fibonacciComCache(10)}');
  print('fibonacci(10) novamente: ${fibonacciComCache(10)}'); // Cache hit
  print('fibonacci(12): ${fibonacciComCache(12)}');
  
  print('\n=== Testando Cache com String ===');
  var processarTextoComCache = criarCache(processarTexto);
  
  print(processarTextoComCache('olá mundo'));
  print(processarTextoComCache('olá mundo')); // Cache hit
  print(processarTextoComCache('dart é incrível'));
  
  print('\n=== Testando Cache com Lista ===');
  var somarListaComCache = criarCache(somarLista);
  
  print('Soma [1,2,3,4,5]: ${somarListaComCache([1,2,3,4,5])}');
  print('Soma [1,2,3,4,5] novamente: ${somarListaComCache([1,2,3,4,5])}'); // Cache hit
}

// Sistema de cache universal
Function criarCache(Function funcaoOriginal) {
  Map<String, dynamic> cache = {};
  
  return (dynamic parametro) {
    String chave = parametro.toString();
    
    if (cache.containsKey(chave)) {
      print('💾 Cache HIT para: $chave');
      return cache[chave];
    }
    
    print('⚡ Calculando: $chave');
    var resultado = funcaoOriginal(parametro);
    cache[chave] = resultado;
    return resultado;
  };
}

// Funções para testar o cache
int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

String processarTexto(String texto) {
  // Simulando processamento custoso
  return texto.split(' ')
      .map((palavra) => palavra[0].toUpperCase() + palavra.substring(1).toLowerCase())
      .join(' ');
}

int somarLista(List<int> numeros) {
  return numeros.reduce((a, b) => a + b);
}
```

**Arquivo:** `gabarito_exercicio_5.dart`  
**DartPad:** Cole e clique em Run

## Resumo

### Pontos-chave para memorizar:

1. **Funções básicas** - Use `tipo nomeFunc(parametros) { return valor; }` para estrutura básica
2. **Parâmetros posicionais** - A ordem importa: `func(a, b, c)`
3. **Parâmetros nomeados** - Use `{required tipo nome}` para clareza: `func(nome: valor)`
4. **Parâmetros opcionais** - `[tipo? nome]` posicionais ou `{tipo nome = padrão}` nomeados
5. **Arrow functions** - Use `=>` para funções simples de uma expressão
6. **Closures** - Funções que "capturam" variáveis do escopo externo
7. **Higher-order functions** - Funções que recebem ou retornam outras funções
8. **Validação** - Sempre valide parâmetros de entrada com `throw ArgumentError()`
9. **Null-safety** - Use `tipo?` para valores opcionais e `required` para obrigatórios
10. **Nomes descritivos** - Use verbos para ações e seja específico na nomenclatura

## Glossário

**Arrow Function**: Sintaxe concisa (`=>`) para funções de uma única expressão.

**Closure**: Função que captura e mantém acesso a variáveis do escopo onde foi definida.

**Função**: Bloco de código reutilizável que executa uma tarefa específica.

**Higher-Order Function**: Função que recebe outras funções como parâmetros ou retorna funções.

**Null-Safety**: Sistema do Dart que previne erros de referência nula em tempo de compilação.

**Parâmetro Nomeado**: Parâmetro identificado pelo nome na chamada da função, não pela posição.

**Parâmetro Opcional**: Parâmetro que pode ser omitido na chamada da função.

**Parâmetro Posicional**: Parâmetro identificado pela posição na chamada da função.

**Required**: Palavra-chave que torna um parâmetro nomeado obrigatório.

**Return**: Palavra-chave que especifica o valor retornado por uma função.

## Referências

1. **Dart Language Tour - Functions**: https://dart.dev/language/functions
2. **Effective Dart - Function Signatures**: https://dart.dev/effective-dart/design#functions
3. **Dart SDK Documentation**: https://api.dart.dev/stable/
4. **DartPad Online**: https://dartpad.dev

**Preparação recomendada:**
- Pratique todos os exercícios deste capítulo
- Experimente criar suas próprias funções no DartPad
- Tente combinar diferentes tipos de parâmetros em uma única função
- Explore o uso de closures para manter estado em pequenos projetos 1
