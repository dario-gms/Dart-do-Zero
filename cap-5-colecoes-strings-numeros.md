# Capítulo 5: List, Map, Set, manipulação de String e num

**Suposições:** Este capítulo assume Dart 3.0+ para aproveitar recursos de null-safety e sintaxe moderna, além do uso do DartPad para testes práticos.

## Objetivos do capítulo

- Compreender e utilizar as principais coleções do Dart: List, Map e Set
- Dominar operações básicas e avançadas com String e números (num, int, double)
- Aplicar métodos de manipulação e transformação de dados
- Implementar soluções práticas usando essas estruturas
- Reconhecer quando usar cada tipo de coleção
- Desenvolver habilidades de processamento de texto e cálculos numéricos

## Pré-requisitos

- Conhecimento básico de variáveis e tipos em Dart
- Familiaridade com funções e sintaxe básica
- Acesso ao [DartPad](https://dartpad.dev) para executar os exemplos
- Conhecimento de conceitos de programação como loops e condicionais

## Sumário

- [Introdução às Coleções](#introdução-às-coleções)
- [List - Listas Ordenadas](#list---listas-ordenadas)
- [Map - Mapeamento Chave-Valor](#map---mapeamento-chave-valor)
- [Set - Conjuntos Únicos](#set---conjuntos-únicos)
- [String - Manipulação de Texto](#string---manipulação-de-texto)
- [Números (num, int, double)](#números-num-int-double)
- [Exemplos Práticos](#exemplos-práticos)
- [Boas Práticas e Advertências](#boas-práticas-e-advertências)
- [Casos de Uso Reais](#casos-de-uso-reais)
- [Exercícios Práticos](#exercícios-práticos)
- [Resumo / Takeaways](#resumo--takeaways)

## Introdução às Coleções

As coleções são estruturas de dados que permitem armazenar múltiplos valores em uma única variável. Imagine uma coleção como um recipiente: uma **List** é como uma fila organizada, um **Map** é como um armário com gavetas etiquetadas, e um **Set** é como uma caixa que não aceita itens duplicados.

Dart oferece três tipos principais de coleções, cada uma com características específicas:

- **List:** Mantém ordem e permite duplicatas
- **Map:** Associa chaves a valores (como um dicionário)
- **Set:** Mantém elementos únicos sem ordem específica

## List - Listas Ordenadas

Uma **List** é uma coleção ordenada de elementos que pode conter duplicatas. É como uma lista de compras onde a ordem importa e você pode repetir itens.

### Características principais:
- Mantém ordem de inserção
- Permite elementos duplicados
- Acesso por índice (posição)
- Dinâmica (pode crescer/diminuir)

## Map - Mapeamento Chave-Valor

Um **Map** é uma coleção que associa chaves únicas a valores. É como um dicionário onde cada palavra (chave) tem uma definição (valor).

### Características principais:
- Chaves são únicas
- Valores podem ser duplicados
- Acesso direto por chave
- Não mantém ordem específica (a menos que seja LinkedHashMap)

## Set - Conjuntos Únicos

Um **Set** é uma coleção que contém apenas elementos únicos. É como uma coleção de selos onde não faz sentido ter o mesmo selo duas vezes.

### Características principais:
- Elementos únicos (sem duplicatas)
- Não mantém ordem específica
- Operações matemáticas de conjuntos (união, interseção)
- Verificação de pertencimento muito eficiente

## String - Manipulação de Texto

**String** representa texto em Dart. Embora não seja tecnicamente uma coleção, oferece muitos métodos para manipular sequências de caracteres.

### Características principais:
- Imutável (não pode ser alterada após criação)
- Rico em métodos de manipulação
- Suporte a interpolação
- Pode ser tratada como sequência de caracteres

## Números (num, int, double)

Dart oferece três tipos numéricos principais:
- **num:** Tipo base para números
- **int:** Números inteiros
- **double:** Números com ponto flutuante

## Exemplos Práticos

### Exemplo 1 — List Básica: Gerenciando Lista de Compras

**Arquivo:** `exemplo_list_basica.dart`

```dart
void main() {
  // Criando lista de compras
  List<String> listaCompras = ['Leite', 'Pão', 'Ovos'];
  
  // Adicionando itens
  listaCompras.add('Açúcar');
  listaCompras.addAll(['Café', 'Arroz']);
  
  print('Lista completa: $listaCompras');
  print('Primeiro item: ${listaCompras.first}');
  print('Último item: ${listaCompras.last}');
  print('Quantidade de itens: ${listaCompras.length}');
  
  // Acessando por índice
  print('Item na posição 2: ${listaCompras[2]}');
  
  // Verificando se contém item
  if (listaCompras.contains('Leite')) {
    print('Leite está na lista!');
  }
  
  // Removendo item
  listaCompras.remove('Pão');
  print('Após remover Pão: $listaCompras');
  
  // Iterando pela lista
  print('\nItens na lista:');
  for (String item in listaCompras) {
    print('- $item');
  }
}
```

**DartPad:** Cole e clique em Run
**Local:** `dart run exemplo_list_basica.dart`

**Explicação:**
- `List<String>` define uma lista que só aceita strings
- `add()` adiciona um item ao final
- `addAll()` adiciona múltiplos itens
- `first` e `last` acessam primeiro e último elemento
- `length` retorna o número de elementos
- `contains()` verifica se um elemento existe
- `remove()` remove a primeira ocorrência do elemento

**Experimente:** Troque os tipos de String para int e adicione números, observe como o comportamento muda.

### Exemplo 2 — Map Básico: Cadastro de Usuários

**Arquivo:** `exemplo_map_basico.dart`

```dart
void main() {
  // Criando map com informações de usuário
  Map<String, dynamic> usuario = {
    'nome': 'João Silva',
    'idade': 30,
    'email': 'joao@email.com',
    'ativo': true
  };
  
  print('Usuário: $usuario');
  print('Nome: ${usuario['nome']}');
  print('Idade: ${usuario['idade']}');
  
  // Adicionando nova chave
  usuario['telefone'] = '11999999999';
  
  // Modificando valor existente
  usuario['idade'] = 31;
  
  print('\nApós modificações: $usuario');
  
  // Verificando se chave existe
  if (usuario.containsKey('telefone')) {
    print('Telefone cadastrado: ${usuario['telefone']}');
  }
  
  // Iterando pelas chaves e valores
  print('\nTodos os dados:');
  usuario.forEach((chave, valor) {
    print('$chave: $valor');
  });
  
  // Obtendo todas as chaves
  print('\nChaves disponíveis: ${usuario.keys.toList()}');
  
  // Obtendo todos os valores
  print('Valores: ${usuario.values.toList()}');
  
  // Removendo chave
  usuario.remove('ativo');
  print('\nApós remover "ativo": $usuario');
}
```

**DartPad:** Cole e clique em Run
**Local:** `dart run exemplo_map_basico.dart`

**Explicação:**
- `Map<String, dynamic>` permite chaves string e valores de qualquer tipo
- Acesso por chave usando `map['chave']`
- `containsKey()` verifica se uma chave existe
- `forEach()` itera por todos os pares chave-valor
- `keys` e `values` retornam coleções de chaves e valores
- `remove()` remove um par chave-valor

**Experimente:** Adicione mais campos como 'endereco' e 'profissao', observe como o Map cresce dinamicamente.

### Exemplo 3 — Set Básico: Controle de Tags Únicas

**Arquivo:** `exemplo_set_basico.dart`

```dart
void main() {
  // Criando set de tags
  Set<String> tags = {'programacao', 'dart', 'iniciante'};
  
  print('Tags iniciais: $tags');
  
  // Tentando adicionar tag duplicada
  tags.add('dart'); // Não adiciona pois já existe
  print('Após tentar adicionar "dart" novamente: $tags');
  
  // Adicionando novas tags
  tags.add('flutter');
  tags.addAll(['mobile', 'web', 'programacao']); // 'programacao' já existe
  
  print('Tags após adições: $tags');
  print('Quantidade de tags: ${tags.length}');
  
  // Verificando se contém tag
  if (tags.contains('flutter')) {
    print('Tag flutter encontrada!');
  }
  
  // Criando outro set para operações
  Set<String> tagsPopulares = {'flutter', 'react', 'javascript', 'dart'};
  
  // Interseção (tags em comum)
  Set<String> tagsComuns = tags.intersection(tagsPopulares);
  print('Tags em comum: $tagsComuns');
  
  // União (todas as tags sem duplicatas)
  Set<String> todasTags = tags.union(tagsPopulares);
  print('Todas as tags: $todasTags');
  
  // Diferença (tags que estão no primeiro mas não no segundo)
  Set<String> tagsDiferentes = tags.difference(tagsPopulares);
  print('Tags diferentes: $tagsDiferentes');
  
  // Convertendo set para lista
  List<String> listaOrdenada = tags.toList()..sort();
  print('Tags ordenadas: $listaOrdenada');
}
```

**DartPad:** Cole e clique em Run
**Local:** `dart run exemplo_set_basico.dart`

**Explicação:**
- Set automaticamente elimina duplicatas
- `intersection()` retorna elementos comuns entre sets
- `union()` combina sets removendo duplicatas
- `difference()` retorna elementos que estão em um set mas não no outro
- `toList()` converte set para lista
- `..sort()` é cascade notation para ordenar a lista

**Experimente:** Crie sets de números e teste as operações matemáticas, veja como o Set remove automaticamente duplicatas.

### Exemplo 4 — String Avançada: Processamento de Texto

**Arquivo:** `exemplo_string_avancada.dart`

```dart
void main() {
  String texto = '  Aprendendo Dart é Muito Legal!  ';
  
  print('Texto original: "$texto"');
  print('Comprimento: ${texto.length}');
  
  // Limpeza e formatação
  String textoLimpo = texto.trim();
  print('Sem espaços nas bordas: "$textoLimpo"');
  
  String minuscula = textoLimpo.toLowerCase();
  print('Minúscula: "$minuscula"');
  
  String maiuscula = textoLimpo.toUpperCase();
  print('Maiúscula: "$maiuscula"');
  
  // Verificações
  print('Contém "Dart": ${textoLimpo.contains("Dart")}');
  print('Começa com "Aprendendo": ${textoLimpo.startsWith("Aprendendo")}');
  print('Termina com "Legal!": ${textoLimpo.endsWith("Legal!")}');
  
  // Substituições
  String textoSubstituido = textoLimpo.replaceAll('Dart', 'Flutter');
  print('Substituindo Dart por Flutter: "$textoSubstituido"');
  
  // Divisão em palavras
  List<String> palavras = textoLimpo.split(' ');
  print('Palavras: $palavras');
  print('Primeira palavra: ${palavras.first}');
  print('Última palavra: ${palavras.last}');
  
  // Substring (pedaço da string)
  String pedaco = textoLimpo.substring(0, 10);
  print('Primeiros 10 caracteres: "$pedaco"');
  
  // Interpolação avançada
  String nome = 'Maria';
  int idade = 25;
  String apresentacao = 'Olá, eu sou $nome e tenho $idade anos. '
      'No próximo ano terei ${idade + 1} anos!';
  print('Interpolação: $apresentacao');
  
  // Multilinha
  String poema = '''
Este é um texto
que possui múltiplas linhas
e preserva a formatação
original.
''';
  print('Texto multilinha: $poema');
  
  // Trabalhando com índices
  print('Primeiro caractere: ${textoLimpo[0]}');
  print('Último caractere: ${textoLimpo[textoLimpo.length - 1]}');
  
  // Iterando por caracteres
  print('Caracteres um por um:');
  for (int i = 0; i < textoLimpo.length; i++) {
    print('Posição $i: ${textoLimpo[i]}');
  }
}
```

**DartPad:** Cole e clique em Run
**Local:** `dart run exemplo_string_avancada.dart`

**Explicação:**
- `trim()` remove espaços do início e fim
- `toLowerCase()` e `toUpperCase()` alteram o caso
- `contains()`, `startsWith()`, `endsWith()` fazem verificações
- `replaceAll()` substitui todas as ocorrências
- `split()` divide string em lista
- `substring()` extrai pedaço da string
- Interpolação com `$variavel` e `${expressão}`
- Strings multilinhas com aspas triplas

**Experimente:** Mude o texto original e teste diferentes métodos, veja como cada um transforma a string de forma diferente.

### Exemplo 5 — Números: Calculadora Avançada

**Arquivo:** `exemplo_numeros_avancados.dart`

```dart
import 'dart:math' as math;

void main() {
  // Diferentes tipos numéricos
  int inteiro = 42;
  double decimal = 3.14159;
  num numero = 10; // Pode ser int ou double
  
  print('Inteiro: $inteiro (tipo: ${inteiro.runtimeType})');
  print('Decimal: $decimal (tipo: ${decimal.runtimeType})');
  print('Número: $numero (tipo: ${numero.runtimeType})');
  
  // Operações básicas
  print('\n--- Operações Básicas ---');
  print('$inteiro + $decimal = ${inteiro + decimal}');
  print('$inteiro * $decimal = ${inteiro * decimal}');
  print('$inteiro / 5 = ${inteiro / 5}'); // Sempre retorna double
  print('$inteiro ~/ 5 = ${inteiro ~/ 5}'); // Divisão inteira
  print('$inteiro % 5 = ${inteiro % 5}'); // Resto da divisão
  
  // Conversões
  print('\n--- Conversões ---');
  String textoNumero = '123.45';
  int inteiroConvertido = int.parse('123');
  double decimalConvertido = double.parse(textoNumero);
  
  print('String "$textoNumero" para double: $decimalConvertido');
  print('Int $inteiro para String: "${inteiro.toString()}"');
  print('Double $decimal para String: "${decimal.toString()}"');
  
  // Formatação de decimais
  print('Pi com 2 casas decimais: ${decimal.toStringAsFixed(2)}');
  print('Pi com 4 casas decimais: ${decimal.toStringAsFixed(4)}');
  
  // Verificações
  print('\n--- Verificações ---');
  print('$decimal é finito? ${decimal.isFinite}');
  print('$decimal é inteiro? ${decimal % 1 == 0}');
  print('$inteiro é par? ${inteiro % 2 == 0}');
  print('$inteiro é ímpar? ${inteiro % 2 != 0}');
  
  // Funções matemáticas (requer import 'dart:math')
  print('\n--- Funções Matemáticas ---');
  print('Valor absoluto de -10: ${(-10).abs()}');
  print('Raiz quadrada de 16: ${math.sqrt(16)}');
  print('Potência 2³: ${math.pow(2, 3)}');
  print('Máximo entre 10 e 20: ${math.max(10, 20)}');
  print('Mínimo entre 10 e 20: ${math.min(10, 20)}');
  print('Número aleatório entre 0-1: ${math.Random().nextDouble()}');
  print('Inteiro aleatório 1-100: ${math.Random().nextInt(100) + 1}');
  
  // Arredondamentos
  double valorDecimal = 3.7;
  print('\n--- Arredondamentos ---');
  print('$valorDecimal arredondado: ${valorDecimal.round()}');
  print('$valorDecimal para baixo: ${valorDecimal.floor()}');
  print('$valorDecimal para cima: ${valorDecimal.ceil()}');
  
  // Validação de entrada
  print('\n--- Validação ---');
  String? entrada = '42abc'; // Simulando entrada do usuário
  
  int? numeroValidado = int.tryParse(entrada);
  if (numeroValidado != null) {
    print('Entrada "$entrada" é um número válido: $numeroValidado');
  } else {
    print('Entrada "$entrada" não é um número válido');
  }
  
  // Trabalhando com precisão
  print('\n--- Precisão ---');
  double resultado = 0.1 + 0.2;
  print('0.1 + 0.2 = $resultado'); // Pode não ser exatamente 0.3
  print('É igual a 0.3? ${resultado == 0.3}');
  
  // Comparação com tolerância
  bool saoIguais = (resultado - 0.3).abs() < 0.0000001;
  print('São iguais com tolerância? $saoIguais');
}
```

**DartPad:** Cole e clique em Run
**Local:** `dart run exemplo_numeros_avancados.dart`

**Explicação:**
- `int.parse()` e `double.parse()` convertem strings para números
- `int.tryParse()` retorna null se conversão falhar
- `/` sempre retorna double, `~/` faz divisão inteira
- `toStringAsFixed()` formata casas decimais
- Biblioteca `dart:math` oferece funções matemáticas
- Comparação de floats requer cuidado com precisão
- `abs()`, `round()`, `floor()`, `ceil()` para operações numéricas

**Experimente:** Teste diferentes valores de entrada e veja como as validações se comportam com dados inválidos.

### Exemplo 6 — Sistema Completo: Gerenciador de Biblioteca

**Arquivo:** `exemplo_biblioteca_completa.dart`

```dart
void main() {
  // Sistema completo usando todas as estruturas
  
  // Lista de livros disponíveis
  List<Map<String, dynamic>> acervo = [
    {
      'id': 1,
      'titulo': 'Dart: Guia Completo',
      'autor': 'João Silva',
      'ano': 2023,
      'disponivel': true,
      'categoria': 'programacao'
    },
    {
      'id': 2,
      'titulo': 'Flutter na Prática',
      'autor': 'Maria Santos',
      'ano': 2024,
      'disponivel': false,
      'categoria': 'programacao'
    },
    {
      'id': 3,
      'titulo': 'História do Brasil',
      'autor': 'Carlos Pereira',
      'ano': 2022,
      'disponivel': true,
      'categoria': 'historia'
    }
  ];
  
  // Set de categorias únicas
  Set<String> categorias = {};
  
  // Map de usuários emprestados
  Map<int, String> emprestimos = {
    2: 'Ana Costa' // Livro ID 2 emprestado para Ana
  };
  
  // Extraindo categorias do acervo
  for (Map<String, dynamic> livro in acervo) {
    categorias.add(livro['categoria'] as String);
  }
  
  print('=== SISTEMA DE BIBLIOTECA ===\n');
  
  // 1. Relatório geral
  print('📚 RELATÓRIO GERAL');
  print('Total de livros: ${acervo.length}');
  print('Categorias disponíveis: $categorias');
  print('Livros emprestados: ${emprestimos.length}\n');
  
  // 2. Lista completa do acervo
  print('📖 ACERVO COMPLETO');
  for (int i = 0; i < acervo.length; i++) {
    Map<String, dynamic> livro = acervo[i];
    String status = livro['disponivel'] ? '✅ Disponível' : '❌ Emprestado';
    String emprestadoPara = emprestimos.containsKey(livro['id']) 
        ? ' (para: ${emprestimos[livro['id']]})' 
        : '';
    
    print('${i + 1}. "${livro['titulo']}" - ${livro['autor']} (${livro['ano']})');
    print('   Categoria: ${livro['categoria']} | $status$emprestadoPara');
  }
  print('');
  
  // 3. Busca por categoria
  String categoriaBusca = 'programacao';
  print('🔍 LIVROS DE ${categoriaBusca.toUpperCase()}');
  
  List<Map<String, dynamic>> livrosProgramacao = acervo.where((livro) {
    return livro['categoria'] == categoriaBusca;
  }).toList();
  
  for (Map<String, dynamic> livro in livrosProgramacao) {
    String disponibilidade = livro['disponivel'] ? 'Disponível' : 'Emprestado';
    print('- "${livro['titulo']}" ($disponibilidade)');
  }
  print('');
  
  // 4. Livros disponíveis para empréstimo
  print('✅ LIVROS DISPONÍVEIS');
  List<Map<String, dynamic>> disponiveis = acervo.where((livro) {
    return livro['disponivel'] == true;
  }).toList();
  
  for (Map<String, dynamic> livro in disponiveis) {
    print('- ID ${livro['id']}: "${livro['titulo']}" - ${livro['autor']}');
  }
  print('');
  
  // 5. Simulando novo empréstimo
  print('📋 SIMULANDO EMPRÉSTIMO');
  int livroId = 1;
  String nomeUsuario = 'Pedro Lima';
  
  // Encontrando o livro
  Map<String, dynamic>? livroEscolhido;
  for (Map<String, dynamic> livro in acervo) {
    if (livro['id'] == livroId) {
      livroEscolhido = livro;
      break;
    }
  }
  
  if (livroEscolhido != null && livroEscolhido['disponivel']) {
    // Realizando empréstimo
    livroEscolhido['disponivel'] = false;
    emprestimos[livroId] = nomeUsuario;
    
    print('✅ Empréstimo realizado!');
    print('Livro: "${livroEscolhido['titulo']}"');
    print('Usuário: $nomeUsuario');
  } else {
    print('❌ Livro não disponível para empréstimo');
  }
  print('');
  
  // 6. Relatório final
  print('📊 RELATÓRIO FINAL');
  int totalDisponiveis = acervo.where((livro) => livro['disponivel']).length;
  int totalEmprestados = acervo.length - totalDisponiveis;
  
  print('Livros disponíveis: $totalDisponiveis');
  print('Livros emprestados: $totalEmprestados');
  
  // 7. Lista de usuários com empréstimos
  if (emprestimos.isNotEmpty) {
    print('\n👥 USUÁRIOS COM EMPRÉSTIMOS:');
    emprestimos.forEach((livroId, usuario) {
      // Encontrando título do livro
      String titulo = 'Livro não encontrado';
      for (Map<String, dynamic> livro in acervo) {
        if (livro['id'] == livroId) {
          titulo = livro['titulo'] as String;
          break;
        }
      }
      print('- $usuario: "$titulo"');
    });
  }
  
  // 8. Estatísticas por categoria
  print('\n📈 ESTATÍSTICAS POR CATEGORIA:');
  Map<String, int> estatisticas = {};
  
  for (String categoria in categorias) {
    int quantidade = acervo.where((livro) => livro['categoria'] == categoria).length;
    estatisticas[categoria] = quantidade;
  }
  
  estatisticas.forEach((categoria, quantidade) {
    double percentual = (quantidade / acervo.length) * 100;
    print('$categoria: $quantidade livros (${percentual.toStringAsFixed(1)}%)');
  });
}
```

**DartPad:** Cole e clique em Run
**Local:** `dart run exemplo_biblioteca_completa.dart`

**Explicação:**
Este exemplo integra todas as estruturas estudadas:
- **List**: Armazena coleção de livros (Maps)
- **Map**: Representa cada livro e controla empréstimos
- **Set**: Mantém categorias únicas
- **String**: Manipulação de texto para busca e formatação
- **num**: Cálculos de estatísticas e percentuais

O código demonstra operações reais como:
- Busca e filtragem de dados
- Atualização de estado (disponibilidade)
- Relatórios e estatísticas
- Validação de operações

**Experimente:** Adicione novos livros ao acervo, simule mais empréstimos e veja como os relatórios se atualizam automaticamente.

## Boas Práticas e Advertências

### ✅ **Fazer:**

1. **Escolha a coleção certa:**
   - Use **List** quando ordem importar ou houver duplicatas
   - Use **Map** para associações chave-valor
   - Use **Set** para elementos únicos

2. **Declare tipos específicos:**
   ```dart
   List<String> nomes = []; // Melhor
   List nomes = []; // Evitar
   ```

3. **Valide entradas numéricas:**
   ```dart
   int? numero = int.tryParse(entrada);
   if (numero != null) {
     // Use o número validado
   }
   ```

4. **Compare floats com cuidado:**
   ```dart
   bool iguais = (a - b).abs() < 0.0000001; // Correto
   bool iguais = a == b; // Pode falhar
   ```

### ❌ **Evitar:**

1. **Não modifique coleções durante iteração:**
   ```dart
   // ERRADO
   for (String item in lista) {
     if (condicao) lista.remove(item);
   }
   
   // CORRETO
   lista.removeWhere((item) => condicao);
   ```

2. **Não ignore null-safety:**
   ```dart
   String? texto = getString();
   print(texto.length); // ERRO: pode ser null
   print(texto?.length ?? 0); // CORRETO
   ```

3. **Não use índices sem verificar limites:**
   ```dart
   if (lista.isNotEmpty) {
     print(lista[0]); // Seguro
   }
   ```

## Casos de Uso Reais

### 1. **Desenvolvimento Web/API**
- **List:** Arrays JSON para listas de produtos, usuários
- **Map:** Objetos JSON, configurações, headers HTTP
- **String:** Manipulação de URLs, validação de formulários
- **num:** Cálculos de preços, descontos, métricas

### 2. **Apps Mobile (Flutter)**
- **List:** Listas de widgets, dados para ListView
- **Map:** Estados do app, preferências do usuário
- **Set:** Tags, categorias, filtros únicos
- **String:** Textos da interface, formatação de dados

### 3. **Scripts CLI e Automação**
- **List:** Processamento de arquivos, argumentos da linha de comando
- **Map:** Configurações, mapeamento de dados
- **String:** Parsing de logs, manipulação de paths
- **num:** Cálculos estatísticos, métricas de performance

## Exercícios Práticos

### Exercício 1 - Análise de Vendas
Crie um programa que analise vendas mensais usando List e calcule estatísticas básicas.

**Requisitos:**
- Lista com vendas de 12 meses
- Calcule: total, média, maior e menor venda
- Identifique o mês com melhor desempenho

### Exercício 2 - Catálogo de Produtos
Implemente um catálogo usando Map para produtos com preços e categorias, incluindo busca por faixa de preço.

**Requisitos:**
- Map com pelo menos 5 produtos
- Busca por categoria e faixa de preço
- Produto mais caro e mais barato

### Exercício 3 - Sistema de Tags
Crie um sistema que gerencia tags de posts usando Set, permitindo operações de união e interseção.

**Requisitos:**
- Dois sets de tags diferentes
- Operações: união, interseção, diferença
- Contagem de tags únicas

### Exercício 4 - Processador de Texto
Desenvolva um analisador de texto que conta palavras, caracteres e gera estatísticas usando String.

**Requisitos:**
- Contar palavras, caracteres, linhas
- Palavra mais frequente
- Texto em maiúscula e minúscula

### Exercício 5 - Calculadora Financeira
Implemente uma calculadora que trabalha com juros compostos usando operações numéricas avançadas.

**Requisitos:**
- Calcular juros simples e compostos
- Valor futuro e presente
- Formatação monetária

## Gabarito dos Exercícios

### Solução Exercício 1 - Análise de Vendas

**Arquivo:** `exercicio1_vendas.dart`

```dart
void main() {
  // Vendas mensais em milhares de reais
  List<double> vendasMensais = [
    45.5, 52.3, 38.7, 61.2, 48.9, 55.6,
    72.1, 68.4, 51.3, 59.8, 66.7, 74.2
  ];
  
  List<String> meses = [
    'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
    'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
  ];
  
  print('=== ANÁLISE DE VENDAS ANUAIS ===\n');
  
  // Total e média
  double total = 0;
  for (double venda in vendasMensais) {
    total += venda;
  }
  double media = total / vendasMensais.length;
  
  print('Total de vendas: R\$ ${total.toStringAsFixed(1)}k');
  print('Média mensal: R\$ ${media.toStringAsFixed(1)}k');
  
  // Maior e menor venda
  double maiorVenda = vendasMensais[0];
  double menorVenda = vendasMensais[0];
  int indiceMaior = 0;
  int indiceMenor = 0;
  
  for (int i = 1; i < vendasMensais.length; i++) {
    if (vendasMensais[i] > maiorVenda) {
      maiorVenda = vendasMensais[i];
      indiceMaior = i;
    }
    if (vendasMensais[i] < menorVenda) {
      menorVenda = vendasMensais[i];
      indiceMenor = i;
    }
  }
  
  print('Maior venda: R\$ ${maiorVenda.toStringAsFixed(1)}k em ${meses[indiceMaior]}');
  print('Menor venda: R\$ ${menorVenda.toStringAsFixed(1)}k em ${meses[indiceMenor]}');
  
  // Meses acima da média
  print('\nMeses acima da média:');
  for (int i = 0; i < vendasMensais.length; i++) {
    if (vendasMensais[i] > media) {
      double diferenca = vendasMensais[i] - media;
      print('- ${meses[i]}: R\$ ${vendasMensais[i].toStringAsFixed(1)}k (+${diferenca.toStringAsFixed(1)}k)');
    }
  }
}
```

**DartPad:** Cole e clique em Run

### Solução Exercício 2 - Catálogo de Produtos

**Arquivo:** `exercicio2_catalogo.dart`

```dart
void main() {
  // Catálogo de produtos
  List<Map<String, dynamic>> produtos = [
    {'nome': 'Notebook Dell', 'preco': 2500.00, 'categoria': 'informatica'},
    {'nome': 'Smartphone Samsung', 'preco': 800.00, 'categoria': 'celular'},
    {'nome': 'Tênis Nike', 'preco': 350.00, 'categoria': 'calçado'},
    {'nome': 'Livro Dart', 'preco': 45.00, 'categoria': 'livro'},
    {'nome': 'Mouse Gamer', 'preco': 120.00, 'categoria': 'informatica'},
    {'nome': 'Fone Bluetooth', 'preco': 200.00, 'categoria': 'audio'},
    {'nome': 'Camiseta', 'preco': 35.00, 'categoria': 'roupa'}
  ];
  
  print('=== CATÁLOGO DE PRODUTOS ===\n');
  
  // Listando todos os produtos
  print('📦 TODOS OS PRODUTOS:');
  for (int i = 0; i < produtos.length; i++) {
    Map<String, dynamic> produto = produtos[i];
    print('${i + 1}. ${produto['nome']} - R\$ ${produto['preco'].toStringAsFixed(2)} (${produto['categoria']})');
  }
  
  // Produto mais caro e mais barato
  Map<String, dynamic> maisCaro = produtos[0];
  Map<String, dynamic> maisBarato = produtos[0];
  
  for (Map<String, dynamic> produto in produtos) {
    if (produto['preco'] > maisCaro['preco']) {
      maisCaro = produto;
    }
    if (produto['preco'] < maisBarato['preco']) {
      maisBarato = produto;
    }
  }
  
  print('\n💰 MAIS CARO: ${maisCaro['nome']} - R\$ ${maisCaro['preco'].toStringAsFixed(2)}');
  print('💸 MAIS BARATO: ${maisBarato['nome']} - R\$ ${maisBarato['preco'].toStringAsFixed(2)}');
  
  // Busca por categoria
  String categoriaBusca = 'informatica';
  print('\n🔍 PRODUTOS DE ${categoriaBusca.toUpperCase()}:');
  
  List<Map<String, dynamic>> produtosCategoria = produtos.where((produto) {
    return produto['categoria'] == categoriaBusca;
  }).toList();
  
  for (Map<String, dynamic> produto in produtosCategoria) {
    print('- ${produto['nome']}: R\$ ${produto['preco'].toStringAsFixed(2)}');
  }
  
  // Busca por faixa de preço
  double precoMin = 100.00;
  double precoMax = 500.00;
  
  print('\n💵 PRODUTOS ENTRE R\$ ${precoMin.toStringAsFixed(2)} e R\$ ${precoMax.toStringAsFixed(2)}:');
  
  List<Map<String, dynamic>> produtosFaixa = produtos.where((produto) {
    double preco = produto['preco'];
    return preco >= precoMin && preco <= precoMax;
  }).toList();
  
  for (Map<String, dynamic> produto in produtosFaixa) {
    print('- ${produto['nome']}: R\$ ${produto['preco'].toStringAsFixed(2)}');
  }
  
  // Estatísticas por categoria
  Set<String> categorias = {};
  for (Map<String, dynamic> produto in produtos) {
    categorias.add(produto['categoria']);
  }
  
  print('\n📊 ESTATÍSTICAS POR CATEGORIA:');
  for (String categoria in categorias) {
    List<Map<String, dynamic>> produtosCat = produtos.where((p) => p['categoria'] == categoria).toList();
    double somaPrecos = 0;
    for (Map<String, dynamic> p in produtosCat) {
      somaPrecos += p['preco'];
    }
    double mediaPrecos = somaPrecos / produtosCat.length;
    
    print('$categoria: ${produtosCat.length} produtos, preço médio: R\$ ${mediaPrecos.toStringAsFixed(2)}');
  }
}
```

**DartPad:** Cole e clique em Run

### Solução Exercício 3 - Sistema de Tags

**Arquivo:** `exercicio3_tags.dart`

```dart
void main() {
  // Sets de tags de diferentes posts
  Set<String> tagsPost1 = {'programacao', 'dart', 'flutter', 'mobile', 'iniciante'};
  Set<String> tagsPost2 = {'programacao', 'javascript', 'web', 'react', 'iniciante'};
  Set<String> tagsPost3 = {'design', 'ui', 'ux', 'mobile', 'prototipagem'};
  
  print('=== SISTEMA DE GERENCIAMENTO DE TAGS ===\n');
  
  // Exibindo tags de cada post
  print('📝 POST 1: $tagsPost1');
  print('📝 POST 2: $tagsPost2');
  print('📝 POST 3: $tagsPost3\n');
  
  // União - todas as tags únicas
  Set<String> todasTags = tagsPost1.union(tagsPost2).union(tagsPost3);
  print('🔗 TODAS AS TAGS (${todasTags.length}): $todasTags');
  
  // Interseção entre Post 1 e Post 2
  Set<String> tagsComuns12 = tagsPost1.intersection(tagsPost2);
  print('🤝 TAGS EM COMUM (Post 1 e 2): $tagsComuns12');
  
  // Tags exclusivas do Post 1
  Set<String> exclusivasPost1 = tagsPost1.difference(tagsPost2);
  print('⭐ TAGS EXCLUSIVAS DO POST 1: $exclusivasPost1');
  
  // Tags exclusivas do Post 2
  Set<String> exclusivasPost2 = tagsPost2.difference(tagsPost1);
  print('⭐ TAGS EXCLUSIVAS DO POST 2: $exclusivasPost2');
  
  // Análise de popularidade das tags
  Map<String, int> popularidadeTags = {};
  
  // Contando ocorrências
  List<Set<String>> todosPosts = [tagsPost1, tagsPost2, tagsPost3];
  
  for (Set<String> tagsPost in todosPosts) {
    for (String tag in tagsPost) {
      popularidadeTags[tag] = (popularidadeTags[tag] ?? 0) + 1;
    }
  }
  
  print('\n📊 POPULARIDADE DAS TAGS:');
  
  // Ordenando por popularidade (convertendo para lista de MapEntry)
  List<MapEntry<String, int>> tagsOrdenadas = popularidadeTags.entries.toList();
  tagsOrdenadas.sort((a, b) => b.value.compareTo(a.value));
  
  for (MapEntry<String, int> entry in tagsOrdenadas) {
    String popularidade = entry.value == 3 ? '🔥' : 
                         entry.value == 2 ? '👍' : '⚡';
    print('$popularidade ${entry.key}: ${entry.value} posts');
  }
  
  // Tags mais populares (aparecem em 2+ posts)
  Set<String> tagsPopulares = {};
  popularidadeTags.forEach((tag, count) {
    if (count >= 2) {
      tagsPopulares.add(tag);
    }
  });
  
  print('\n🏆 TAGS POPULARES (2+ posts): $tagsPopulares');
  
  // Simulando adição de nova tag
  String novaTag = 'tutorial';
  print('\n➕ ADICIONANDO TAG "$novaTag" AO POST 1:');
  
  tagsPost1.add(novaTag);
  print('Post 1 atualizado: $tagsPost1');
  
  // Verificando se uma tag específica existe
  String tagBusca = 'programacao';
  int postsComTag = 0;
  
  for (Set<String> tags in [tagsPost1, tagsPost2, tagsPost3]) {
    if (tags.contains(tagBusca)) {
      postsComTag++;
    }
  }
  
  print('\n🔍 A tag "$tagBusca" aparece em $postsComTag posts');
  
  // Sugestão de tags relacionadas
  print('\n💡 TAGS RELACIONADAS A "$tagBusca":');
  Set<String> tagsRelacionadas = {};
  
  for (Set<String> tags in [tagsPost1, tagsPost2, tagsPost3]) {
    if (tags.contains(tagBusca)) {
      tagsRelacionadas.addAll(tags);
    }
  }
  
  tagsRelacionadas.remove(tagBusca); // Remove a própria tag
  print('Sugestões: $tagsRelacionadas');
}
```

**DartPad:** Cole e clique em Run

### Solução Exercício 4 - Processador de Texto

**Arquivo:** `exercicio4_texto.dart`

```dart
void main() {
  String texto = '''
Dart é uma linguagem de programação moderna e poderosa.
Ela foi criada pelo Google para desenvolvimento de aplicações.
Com Dart, você pode criar apps mobile, web e desktop.
A linguagem é fácil de aprender e muito versátil.
Dart possui recursos como null-safety e hot reload.
''';
  
  print('=== PROCESSADOR DE TEXTO ===\n');
  
  print('📄 TEXTO ORIGINAL:');
  print('"$texto"');
  
  // Estatísticas básicas
  int totalCaracteres = texto.length;
  int caracteresComEspaco = texto.length;
  int caracteresSemEspaco = texto.replaceAll(' ', '').replaceAll('\n', '').length;
  
  // Contando linhas
  List<String> linhas = texto.trim().split('\n');
  int totalLinhas = linhas.where((linha) => linha.trim().isNotEmpty).length;
  
  // Contando palavras
  String textoLimpo = texto.replaceAll('\n', ' ').trim();
  List<String> palavras = textoLimpo.split(RegExp(r'\s+'));
  palavras = palavras.where((palavra) => palavra.isNotEmpty).toList();
  int totalPalavras = palavras.length;
  
  print('\n📊 ESTATÍSTICAS BÁSICAS:');
  print('Caracteres (com espaços): $caracteresComEspaco');
  print('Caracteres (sem espaços): $caracteresSemEspaco');
  print('Linhas: $totalLinhas');
  print('Palavras: $totalPalavras');
  print('Média de palavras por linha: ${(totalPalavras / totalLinhas).toStringAsFixed(1)}');
  
  // Análise de palavras
  print('\n📝 ANÁLISE DE PALAVRAS:');
  
  // Contagem de frequência
  Map<String, int> frequenciaPalavras = {};
  
  for (String palavra in palavras) {
    // Limpando pontuação e convertendo para minúscula
    String palavraLimpa = palavra.toLowerCase().replaceAll(RegExp(r'[.,!?;:]'), '');
    if (palavraLimpa.isNotEmpty) {
      frequenciaPalavras[palavraLimpa] = (frequenciaPalavras[palavraLimpa] ?? 0) + 1;
    }
  }
  
  // Palavra mais frequente
  String palavraMaisFrequente = '';
  int maiorFrequencia = 0;
  
  frequenciaPalavras.forEach((palavra, freq) {
    if (freq > maiorFrequencia) {
      maiorFrequencia = freq;
      palavraMaisFrequente = palavra;
    }
  });
  
  print('Palavra mais frequente: "$palavraMaisFrequente" ($maiorFrequencia vezes)');
  
  // Palavras únicas
  print('Palavras únicas: ${frequenciaPalavras.length}');
  
  // Top 5 palavras mais frequentes
  List<MapEntry<String, int>> palavrasOrdenadas = frequenciaPalavras.entries.toList();
  palavrasOrdenadas.sort((a, b) => b.value.compareTo(a.value));
  
  print('\n🏆 TOP 5 PALAVRAS MAIS FREQUENTES:');
  for (int i = 0; i < 5 && i < palavrasOrdenadas.length; i++) {
    MapEntry<String, int> entry = palavrasOrdenadas[i];
    print('${i + 1}. "${entry.key}": ${entry.value} vezes');
  }
  
  // Análise de comprimento de palavras
  List<int> comprimentos = palavras.map((palavra) {
    return palavra.replaceAll(RegExp(r'[.,!?;:]'), '').length;
  }).toList();
  
  int somaComprimentos = 0;
  for (int comp in comprimentos) {
    somaComprimentos += comp;
  }
  double mediaComprimento = somaComprimentos / comprimentos.length;
  
  comprimentos.sort();
  int menorPalavra = comprimentos.first;
  int maiorPalavra = comprimentos.last;
  
  print('\n📏 ANÁLISE DE COMPRIMENTO:');
  print('Comprimento médio das palavras: ${mediaComprimento.toStringAsFixed(1)} caracteres');
  print('Palavra mais curta: $menorPalavra caracteres');
  print('Palavra mais longa: $maiorPalavra caracteres');
  
  // Transformações do texto
  print('\n🔄 TRANSFORMAÇÕES:');
  print('MAIÚSCULAS: ${textoLimpo.toUpperCase()}');
  print('minúsculas: ${textoLimpo.toLowerCase()}');
  
  // Texto sem vogais (exemplo de manipulação)
  String textoSemVogais = textoLimpo.replaceAll(RegExp(r'[aeiouAEIOU]'), '*');
  print('Substituindo vogais por *: $textoSemVogais');
  
  // Contando vogais e consoantes
  int vogais = 0;
  int consoantes = 0;
  
  for (int i = 0; i < texto.length; i++) {
    String char = texto[i].toLowerCase();
    if (RegExp(r'[aeiou]').hasMatch(char)) {
      vogais++;
    } else if (RegExp(r'[bcdfghjklmnpqrstvwxyz]').hasMatch(char)) {
      consoantes++;
    }
  }
  
  print('\n🔤 CONTAGEM DE LETRAS:');
  print('Vogais: $vogais');
  print('Consoantes: $consoantes');
  print('Outros caracteres: ${totalCaracteres - vogais - consoantes}');
  
  // Palíndromo (palavra que lê igual de trás para frente)
  print('\n🔄 TESTE DE PALÍNDROMOS (palavras com 3+ letras):');
  for (String palavra in frequenciaPalavras.keys) {
    if (palavra.length >= 3) {
      String palavraInversa = palavra.split('').reversed.join('');
      if (palavra == palavraInversa) {
        print('Palíndromo encontrado: "$palavra"');
      }
    }
  }
}
```

**DartPad:** Cole e clique em Run

### Solução Exercício 5 - Calculadora Financeira

**Arquivo:** `exercicio5_financeira.dart`

```dart
import 'dart:math' as math;

void main() {
  print('=== CALCULADORA FINANCEIRA ===\n');
  
  // Dados para os cálculos
  double capital = 1000.00; // Capital inicial
  double taxa = 0.12; // 12% ao ano
  int tempo = 5; // 5 anos
  
  print('💰 DADOS INICIAIS:');
  print('Capital inicial: ${formatarMoeda(capital)}');
  print('Taxa de juros: ${(taxa * 100).toStringAsFixed(1)}% ao ano');
  print('Período: $tempo anos\n');
  
  // 1. Juros Simples
  print('📈 JUROS SIMPLES:');
  double jurosSimples = capital * taxa * tempo;
  double montanteSimples = capital + jurosSimples;
  
  print('Juros: ${formatarMoeda(jurosSimples)}');
  print('Montante final: ${formatarMoeda(montanteSimples)}');
  print('Rentabilidade: ${((montanteSimples / capital - 1) * 100).toStringAsFixed(1)}%\n');
  
  // 2. Juros Compostos
  print('📊 JUROS COMPOSTOS:');
  double montanteComposto = capital * math.pow(1 + taxa, tempo);
  double jurosCompostos = montanteComposto - capital;
  
  print('Juros: ${formatarMoeda(jurosCompostos)}');
  print('Montante final: ${formatarMoeda(montanteComposto)}');
  print('Rentabilidade: ${((montanteComposto / capital - 1) * 100).toStringAsFixed(1)}%\n');
  
  // 3. Comparação
  double diferenca = montanteComposto - montanteSimples;
  print('🔄 COMPARAÇÃO:');
  print('Diferença (Composto - Simples): ${formatarMoeda(diferenca)}');
  print('Vantagem dos juros compostos: ${(diferenca / montanteSimples * 100).toStringAsFixed(1)}%\n');
  
  // 4. Evolução ano a ano (Juros Compostos)
  print('📅 EVOLUÇÃO ANO A ANO (Juros Compostos):');
  double saldo = capital;
  
  for (int ano = 0; ano <= tempo; ano++) {
    double jurosAno = ano == 0 ? 0 : saldo * taxa;
    if (ano > 0) {
      saldo = capital * math.pow(1 + taxa, ano);
    }
    
    print('Ano $ano: ${formatarMoeda(saldo)} ${ano > 0 ? "(+${formatarMoeda(jurosAno)} em juros)" : "(inicial)"}');
  }
  print('');
  
  // 5. Valor Presente e Valor Futuro
  print('💡 CÁLCULOS AVANÇADOS:');
  
  double valorFuturo = 2000.00; // Quanto queremos ter no futuro
  double valorPresenteNecessario = valorFuturo / math.pow(1 + taxa, tempo);
  
  print('Para ter ${formatarMoeda(valorFuturo)} em $tempo anos,');
  print('você precisa investir hoje: ${formatarMoeda(valorPresenteNecessario)}\n');
  
  // 6. Simulação de aportes mensais
  print('🎯 SIMULAÇÃO COM APORTES MENSAIS:');
  
  double aporteMensal = 100.00;
  double taxaMensal = math.pow(1 + taxa, 1/12) - 1; // Taxa mensal equivalente
  int meses = tempo * 12;
  
  // Fórmula do valor futuro de uma anuidade
  double montanteAportes = aporteMensal * ((math.pow(1 + taxaMensal, meses) - 1) / taxaMensal);
  double totalAportado = capital + (aporteMensal * meses);
  double jurosTotal = montanteAportes + capital - totalAportado;
  
  print('Investimento inicial: ${formatarMoeda(capital)}');
  print('Aporte mensal: ${formatarMoeda(aporteMensal)}');
  print('Total aportado: ${formatarMoeda(totalAportado)}');
  print('Montante final: ${formatarMoeda(montanteAportes + capital)}');
  print('Juros ganhos: ${formatarMoeda(jurosTotal)}');
  print('Rentabilidade total: ${(jurosTotal / totalAportado * 100).toStringAsFixed(1)}%\n');
  
  // 7. Tempo para dobrar o investimento
  print('⏰ TEMPO PARA DOBRAR O INVESTIMENTO:');
  
  // Regra prática: Regra do 72
  double tempoRegra72 = 72 / (taxa * 100);
  
  // Cálculo exato
  double tempoExato = math.log(2) / math.log(1 + taxa);
  
  print('Regra do 72: ${tempoRegra72.toStringAsFixed(1)} anos');
  print('Cálculo exato: ${tempoExato.toStringAsFixed(1)} anos\n');
  
  // 8. Diferentes cenários de taxa
  print('🎲 DIFERENTES CENÁRIOS DE TAXA:');
  
  List<double> taxasCenarios = [0.08, 0.10, 0.12, 0.15, 0.20]; // 8%, 10%, 12%, 15%, 20%
  
  print('Capital: ${formatarMoeda(capital)}, Tempo: $tempo anos');
  print('Taxa\tMontante\tJuros\t\tRentabilidade');
  print('-' * 55);
  
  for (double taxaCenario in taxasCenarios) {
    double montante = capital * math.pow(1 + taxaCenario, tempo);
    double juros = montante - capital;
    double rentabilidade = (montante / capital - 1) * 100;
    
    print('${(taxaCenario * 100).toStringAsFixed(0)}%\t'
          '${formatarMoedaCurto(montante)}\t\t'
          '${formatarMoedaCurto(juros)}\t\t'
          '${rentabilidade.toStringAsFixed(1)}%');
  }
  
  print('\n✨ DICAS IMPORTANTES:');
  print('• Juros compostos são mais vantajosos a longo prazo');
  print('• Aportes regulares potencializam os ganhos');
  print('• Quanto maior o tempo, maior o efeito dos juros compostos');
  print('• Uma pequena diferença na taxa faz grande diferença no resultado final');
}

// Função para formatar valores em reais
String formatarMoeda(double valor) {
  return 'R\$ ${valor.toStringAsFixed(2).replaceAll('.', ',')}';
}

// Função para formatar valores em formato mais curto
String formatarMoedaCurto(double valor) {
  if (valor >= 1000) {
    return 'R\$ ${(valor/1000).toStringAsFixed(1)}k';
  }
  return 'R\$ ${valor.toStringAsFixed(0)}';
}
```

**DartPad:** Cole e clique em Run

## Resumo / Takeaways

1. **List** é ideal para coleções ordenadas que podem ter duplicatas
2. **Map** associa chaves únicas a valores, perfeito para dados estruturados
3. **Set** garante elementos únicos e oferece operações matemáticas de conjuntos
4. **String** é imutável e rica em métodos de manipulação de texto
5. **num**, **int** e **double** cobrem todas as necessidades numéricas
6. Use `tryParse()` para conversões seguras de string para número
7. Coleções são dinâmicas por padrão, podendo crescer e diminuir
8. Sempre declare tipos específicos para melhor performance e clareza
9. Compare números decimais com tolerância, não com igualdade direta
10. Métodos como `where()`, `map()`, `forEach()` facilitam operações em coleções
