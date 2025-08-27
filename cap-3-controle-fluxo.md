# Capítulo 3: if, switch, laços (for, while, do-while), break/continue

> **Suposições deste capítulo:** Este capítulo assume Dart 3.0+ e que o leitor usa DartPad (https://dartpad.dev) para testar os exemplos. A versão 3.0+ é necessária para aproveitar melhorias na sintaxe de null-safety e recursos modernos da linguagem.

## Objetivos do capítulo

- Compreender como usar estruturas condicionais (if/else e switch) para tomar decisões no código
- Dominar os diferentes tipos de laços (for, while, do-while) para repetir operações
- Aprender quando e como usar break e continue para controlar o fluxo dos laços
- Aplicar essas estruturas em problemas práticos do dia a dia
- Desenvolver a capacidade de escolher a estrutura de controle mais adequada para cada situação

## Pré-requisitos

- Conhecimento básico de variáveis e tipos em Dart (Capítulos 1 e 2)
- Acesso ao DartPad (https://dartpad.dev) ou Dart SDK instalado localmente
- Compreensão de operadores de comparação (==, !=, <, >, <=, >=)

## Sumário

1. [Introdução às estruturas de controle](#introdução-às-estruturas-de-controle)
2. [Condicionais: if e else](#condicionais-if-e-else)
3. [Switch: alternativa elegante para múltiplas condições](#switch-alternativa-elegante-para-múltiplas-condições)
4. [Laços: repetindo operações](#laços-repetindo-operações)
   - [For: quando sabemos quantas vezes repetir](#for-quando-sabemos-quantas-vezes-repetir)
   - [While: repetindo enquanto uma condição for verdadeira](#while-repetindo-enquanto-uma-condição-for-verdadeira)
   - [Do-while: executando pelo menos uma vez](#do-while-executando-pelo-menos-uma-vez)
5. [Controlando laços com break e continue](#controlando-laços-com-break-e-continue)
6. [Exemplos práticos](#exemplos-práticos)
7. [Boas práticas e advertências](#boas-práticas-e-advertências)
8. [Casos de uso reais](#casos-de-uso-reais)
9. [Exercícios práticos](#exercícios-práticos)
10. [Resumo](#resumo)
11. [Glossário](#glossário)
12. [Referências recomendadas](#referências-recomendadas)
13. [Próximos passos](#próximos-passos)

## Introdução às estruturas de controle

As estruturas de controle são como semáforos no trânsito do seu código. Elas determinam qual caminho o programa deve seguir baseado em condições, ou quantas vezes uma operação deve ser repetida. Sem elas, nosso código seria apenas uma lista de instruções que sempre executam na mesma ordem - como um robô que só sabe andar em linha reta.

Em Dart, temos três tipos principais:
- **Condicionais**: tomam decisões (if, else, switch)
- **Laços**: repetem operações (for, while, do-while)
- **Controladores de fluxo**: modificam o comportamento dos laços (break, continue)

## Condicionais: if e else

O `if` funciona como uma pergunta: "Se esta condição for verdadeira, execute este código". É como perguntar "Está chovendo?" antes de decidir se leva guarda-chuva.

### Exemplo 1 — Condicional simples com if

```dart
void main() {
  int idade = 18;
  
  // Condicional simples
  if (idade >= 18) {
    print('Você é maior de idade!');
  }
  
  // If com else
  if (idade >= 21) {
    print('Pode dirigir nos EUA');
  } else {
    print('Ainda não pode dirigir nos EUA');
  }
  
  // If aninhado (um if dentro do outro)
  if (idade >= 16) {
    print('Pode tirar habilitação no Brasil');
    if (idade >= 18) {
      print('E também votar!');
    }
  }
}
```

**Nome do arquivo:** `condicional_simples.dart`
**DartPad:** Cole e clique em Run
**Local:** `dart run condicional_simples.dart`

**Explicação linha por linha:**
- `int idade = 18`: Define a idade que vamos testar
- `if (idade >= 18)`: Pergunta se a idade é maior ou igual a 18
- As chaves `{}` delimitam o bloco de código que executa se a condição for verdadeira
- `else` fornece uma alternativa quando a condição é falsa
- Ifs aninhados permitem verificações mais específicas dentro de outras condições

**Teste no DartPad:** Mude o valor de `idade` para 15, 20 e 25 e observe como as mensagens mudam.

### Exemplo 2 — If com múltiplas condições

```dart
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
```

**Nome do arquivo:** `multiplas_condicoes.dart`
**DartPad:** Cole e clique em Run
**Local:** `dart run multiplas_condicoes.dart`

**Explicação dos operadores:**
- `&&` (AND): As duas condições precisam ser verdadeiras
- `||` (OR): Pelo menos uma condição precisa ser verdadeira
- `!` (NOT): Inverte o valor booleano (true vira false e vice-versa)
- `else if`: Permite testar múltiplas condições em sequência

**Experimente:** Altere os valores de `clima`, `temperatura` e `temGuardaChuva` para ver diferentes combinações.

## Switch: alternativa elegante para múltiplas condições

Quando você tem muitas condições baseadas no mesmo valor, o `switch` é mais limpo que vários `if/else if`. É como um menu de restaurante: você escolhe uma opção específica e recebe o prato correspondente.

### Exemplo 3 — Switch básico com enum

```dart
// Definindo um enum para dias da semana
enum DiaSemana { segunda, terca, quarta, quinta, sexta, sabado, domingo }

void main() {
  DiaSemana hoje = DiaSemana.sexta;
  
  // Switch clássico
  switch (hoje) {
    case DiaSemana.segunda:
      print('Começou a semana! Força!');
      break;
    case DiaSemana.terca:
      print('Terça de produtividade!');
      break;
    case DiaSemana.quarta:
      print('Meio da semana!');
      break;
    case DiaSemana.quinta:
      print('Quinta, quase chegando!');
      break;
    case DiaSemana.sexta:
      print('SEXTOU! 🎉');
      break;
    case DiaSemana.sabado:
    case DiaSemana.domingo:
      print('Final de semana relaxante!');
      break;
  }
  
  // Switch expression (mais moderno, Dart 3.0+)
  String mensagem = switch (hoje) {
    DiaSemana.segunda => 'Começou a semana!',
    DiaSemana.terca => 'Terça produtiva!',
    DiaSemana.quarta => 'Meio da semana!',
    DiaSemana.quinta => 'Quinta-feira!',
    DiaSemana.sexta => 'SEXTOU!',
    DiaSemana.sabado || DiaSemana.domingo => 'Final de semana!'
  };
  
  print('Switch expression: $mensagem');
}
```

**Nome do arquivo:** `switch_basico.dart`
**DartPad:** Cole e clique em Run
**Local:** `dart run switch_basico.dart`

**Principais diferenças:**
- `switch` clássico: Usa `case`, `break` e executa comandos
- `switch expression`: Mais conciso, retorna um valor diretamente
- `||` no switch expression: Equivale a múltiplos cases no switch clássico

**Experimente:** Mude o valor de `hoje` para diferentes dias da semana.

## Laços: repetindo operações

Os laços são como uma esteira de fábrica: repetem a mesma operação até que uma condição pare o processo. Cada tipo de laço é adequado para situações diferentes.

### For: quando sabemos quantas vezes repetir

O `for` é ideal quando você sabe exatamente quantas repetições precisa, como contar de 1 a 10 ou percorrer uma lista.

### Exemplo 4 — For tradicional e for-in

```dart
void main() {
  // For tradicional - sabemos quantas vezes executar
  print('=== Contagem simples ===');
  for (int i = 1; i <= 5; i++) {
    print('Contagem: $i');
  }
  
  // For com step diferente
  print('\n=== Contagem de 2 em 2 ===');
  for (int i = 0; i <= 10; i += 2) {
    print('Número par: $i');
  }
  
  // For decrescente
  print('\n=== Contagem regressiva ===');
  for (int i = 5; i >= 1; i--) {
    print('$i...');
  }
  print('🚀 Decolagem!');
  
  // For-in para percorrer coleções
  List<String> frutas = ['maçã', 'banana', 'laranja', 'uva'];
  print('\n=== Lista de frutas ===');
  for (String fruta in frutas) {
    print('Fruta: $fruta');
  }
  
  // For-in com índice usando enumerate (versão manual)
  print('\n=== Com índices ===');
  for (int i = 0; i < frutas.length; i++) {
    print('${i + 1}. ${frutas[i]}');
  }
}
```

**Nome do arquivo:** `for_exemplos.dart`
**DartPad:** Cole e clique em Run
**Local:** `dart run for_exemplos.dart`

**Anatomia do for:**
- `int i = 1`: Inicialização (executa uma vez no começo)
- `i <= 5`: Condição (testada antes de cada iteração)
- `i++`: Incremento (executa após cada iteração)

**Teste:** Altere os valores iniciais e finais para ver diferentes padrões de repetição.

### While: repetindo enquanto uma condição for verdadeira

O `while` é como perguntar "ainda preciso continuar?" antes de cada repetição. Use quando não souber exatamente quantas vezes vai repetir.

### Exemplo 5 — While com validação de entrada

```dart
void main() {
  // Simulando entrada de usuário (no DartPad usamos lista predefinida)
  List<String> entradasSimuladas = ['abc', '15x', '42', '0'];
  int indiceEntrada = 0;
  
  int? numero;
  
  // While para validar entrada até ser um número válido
  while (numero == null) {
    if (indiceEntrada >= entradasSimuladas.length) {
      print('Simulação encerrada - sem mais entradas');
      break;
    }
    
    String entrada = entradasSimuladas[indiceEntrada++];
    print('Tentando converter: "$entrada"');
    
    numero = int.tryParse(entrada);
    
    if (numero == null) {
      print('❌ "$entrada" não é um número válido. Tente novamente.');
    } else {
      print('✅ Número válido recebido: $numero');
    }
  }
  
  // Exemplo de while para processamento
  print('\n=== Processando número ===');
  int contador = 0;
  int temp = numero ?? 0;
  
  // Contando dígitos
  if (temp == 0) {
    contador = 1;
  } else {
    while (temp > 0) {
      temp ~/= 10; // Divisão inteira
      contador++;
    }
  }
  
  print('O número $numero tem $contador dígito(s)');
}
```

**Nome do arquivo:** `while_validacao.dart`
**DartPad:** Cole e clique em Run
**Local:** `dart run while_validacao.dart`

**Pontos importantes:**
- `int.tryParse()`: Tenta converter string para int, retorna null se falhar
- `numero == null`: Continua enquanto não tiver um número válido
- `~/=`: Operador de divisão inteira em Dart

### Do-while: executando pelo menos uma vez

O `do-while` executa o código primeiro e só depois verifica a condição. É como fazer algo e depois perguntar "preciso fazer de novo?".

### Exemplo 6 — Do-while para menu interativo

```dart
void main() {
  // Simulando um menu que sempre executa pelo menos uma vez
  List<int> escolhasSimuladas = [1, 3, 2, 0];
  int indiceEscolha = 0;
  int escolha;
  
  do {
    // Mostra o menu
    print('\n=== MENU PRINCIPAL ===');
    print('1. Ver informações');
    print('2. Calcular área');
    print('3. Mostrar data atual');
    print('0. Sair');
    print('========================');
    
    // Simula entrada do usuário
    if (indiceEscolha < escolhasSimuladas.length) {
      escolha = escolhasSimuladas[indiceEscolha++];
      print('Escolha simulada: $escolha');
    } else {
      escolha = 0; // Força saída quando acabam as simulações
    }
    
    // Processa a escolha
    switch (escolha) {
      case 1:
        print('ℹ️ Sistema versão 1.0 - Dart Learning');
        break;
      case 2:
        double lado = 5.0;
        double area = lado * lado;
        print('📐 Área do quadrado (lado $lado): $area m²');
        break;
      case 3:
        DateTime agora = DateTime.now();
        print('📅 Data atual: ${agora.day}/${agora.month}/${agora.year}');
        break;
      case 0:
        print('👋 Saindo do sistema...');
        break;
      default:
        print('❌ Opção inválida. Tente novamente.');
    }
    
  } while (escolha != 0); // Continua até o usuário escolher 0
  
  print('Sistema finalizado.');
}
```

**Nome do arquivo:** `do_while_menu.dart`
**DartPad:** Cole e clique em Run
**Local:** `dart run do_while_menu.dart`

**Diferença chave:** `do-while` sempre executa o bloco pelo menos uma vez, mesmo que a condição seja falsa desde o início.

## Controlando laços com break e continue

`break` e `continue` são como controles remotos dos seus laços: um para parar completamente e outro para pular para a próxima iteração.

### Exemplo 7 — Break e continue em ação

```dart
void main() {
  print('=== Demonstração de BREAK ===');
  // Break: para o laço completamente
  for (int i = 1; i <= 10; i++) {
    if (i == 6) {
      print('Encontrou 6! Parando o laço...');
      break; // Sai do laço imediatamente
    }
    print('Número: $i');
  }
  print('Laço terminado com break\n');
  
  print('=== Demonstração de CONTINUE ===');
  // Continue: pula para a próxima iteração
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      continue; // Pula números pares
    }
    print('Número ímpar: $i');
  }
  
  print('\n=== Exemplo prático: Validando lista ===');
  List<String> emails = [
    'joao@email.com',
    'maria@invalido',
    'pedro@teste.com',
    '',
    'ana@empresa.com.br',
    'carlos@'
  ];
  
  int emailsValidos = 0;
  
  for (String email in emails) {
    // Continue para emails vazios
    if (email.isEmpty) {
      print('⚠️ Email vazio - pulando...');
      continue;
    }
    
    // Break se encontrou email muito inválido
    if (!email.contains('@') || email.endsWith('@')) {
      print('❌ Email muito inválido: "$email" - parando validação');
      break;
    }
    
    // Validação simples (contém @ e tem algo depois)
    if (email.contains('@') && email.split('@').length == 2 && 
        email.split('@')[1].isNotEmpty) {
      print('✅ Email válido: $email');
      emailsValidos++;
    } else {
      print('⚠️ Email suspeito: $email');
    }
  }
  
  print('\nTotal de emails válidos processados: $emailsValidos');
}
```

**Nome do arquivo:** `break_continue.dart`
**DartPad:** Cole e clique em Run
**Local:** `dart run break_continue.dart`

**Resumo dos comandos:**
- `break`: Sai completamente do laço
- `continue`: Pula para a próxima iteração, ignorando o resto do código no bloco atual

## Boas práticas e advertências

### ✅ Faça assim:

```dart
void main() {
  // BOA: Condições claras e legíveis
  int idade = 25;
  if (idade >= 18 && idade < 65) {
    print('Idade de trabalho');
  }
  
  // BOA: Use switch para múltiplas opções do mesmo valor
  String status = 'ativo';
  switch (status) {
    case 'ativo':
      print('Usuário ativo');
      break;
    case 'inativo':
      print('Usuário inativo');
      break;
    default:
      print('Status desconhecido');
  }
  
  // BOA: For-in para percorrer coleções
  List<int> numeros = [1, 2, 3, 4, 5];
  for (int num in numeros) {
    print(num);
  }
}
```

### ❌ Evite fazer assim:

```dart
void main() {
  int idade = 25;
  
  // RUIM: Muitos if/else if quando switch seria melhor
  String status = 'ativo';
  if (status == 'ativo') {
    print('Usuário ativo');
  } else if (status == 'inativo') {
    print('Usuário inativo');
  } else if (status == 'pendente') {
    print('Usuário pendente');
  }
  // ... seria melhor usar switch
  
  // RUIM: For tradicional desnecessário
  List<int> numeros = [1, 2, 3, 4, 5];
  for (int i = 0; i < numeros.length; i++) {
    print(numeros[i]); // for-in seria mais simples
  }
  
  // RUIM: While infinito sem break adequado
  // while (true) {
  //   // código sem condição de saída clara
  // }
}
```

### Advertências importantes:

1. **Loops infinitos**: Sempre garanta que a condição do while pode se tornar falsa
2. **Performance**: Evite operações pesadas dentro de laços que executam muitas vezes
3. **Legibilidade**: Prefira for-in para percorrer coleções, reserve o for tradicional para quando precisar do índice
4. **Break em switches**: Não esqueça do `break` no switch clássico (no switch expression não é necessário)

## Casos de uso reais

### 1. Validação de formulários web
```dart
void main() {
  // Simulação de validação de formulário
  Map<String, String> formulario = {
    'nome': 'João Silva',
    'email': 'joao@email.com',
    'idade': '25',
    'telefone': ''
  };
  
  List<String> erros = [];
  
  formulario.forEach((campo, valor) {
    if (valor.isEmpty) {
      erros.add('Campo $campo é obrigatório');
      return; // Similar ao continue em forEach
    }
    
    // Validações específicas por campo
    switch (campo) {
      case 'email':
        if (!valor.contains('@')) {
          erros.add('Email inválido');
        }
        break;
      case 'idade':
        int? idade = int.tryParse(valor);
        if (idade == null || idade < 18) {
          erros.add('Idade deve ser maior que 18 anos');
        }
        break;
    }
  });
  
  if (erros.isEmpty) {
    print('✅ Formulário válido!');
  } else {
    print('❌ Erros encontrados:');
    for (String erro in erros) {
      print('- $erro');
    }
  }
}
```

### 2. Processamento de dados em lote
```dart
void main() {
  // Simulação de processamento de vendas
  List<double> vendas = [150.0, 230.0, 89.0, 456.0, 12.0, 890.0, 234.0];
  
  double total = 0;
  int vendasAltas = 0; // vendas acima de 200
  double maiorVenda = 0;
  
  for (double venda in vendas) {
    total += venda;
    
    if (venda > 200) {
      vendasAltas++;
    }
    
    if (venda > maiorVenda) {
      maiorVenda = venda;
    }
  }
  
  double media = total / vendas.length;
  
  print('📊 Relatório de Vendas:');
  print('Total: R\$ ${total.toStringAsFixed(2)}');
  print('Média: R\$ ${media.toStringAsFixed(2)}');
  print('Vendas altas (>R\$200): $vendasAltas');
  print('Maior venda: R\$ ${maiorVenda.toStringAsFixed(2)}');
}
```

### 3. Sistema de retry com timeout
```dart
void main() {
  // Simulação de tentativas de conexão
  int tentativas = 0;
  int maxTentativas = 5;
  bool conectado = false;
  
  // Simula diferentes resultados de conexão
  List<bool> resultadosSimulados = [false, false, true];
  
  while (!conectado && tentativas < maxTentativas) {
    tentativas++;
    print('Tentativa $tentativas de conectar...');
    
    // Simula tentativa de conexão
    if (tentativas <= resultadosSimulados.length) {
      conectado = resultadosSimulados[tentativas - 1];
    }
    
    if (conectado) {
      print('✅ Conectado com sucesso!');
      break;
    } else {
      print('❌ Falha na conexão. Aguardando...');
      if (tentativas < maxTentativas) {
        print('Tentando novamente em 2 segundos...');
      }
    }
  }
  
  if (!conectado) {
    print('🚨 Falha: Não foi possível conectar após $tentativas tentativas');
  }
}
```

## Exercícios práticos

### Exercício 1: Classificador de notas
Crie um programa que receba uma nota de 0 a 100 e classifique usando if/else:
- 90-100: Excelente
- 80-89: Bom
- 70-79: Regular  
- 60-69: Ruim
- Abaixo de 60: Reprovado

### Exercício 2: Calculadora com switch
Implemente uma calculadora que use switch expression para as operações +, -, *, /.

### Exercício 3: Números primos
Use for e if para encontrar todos os números primos de 2 a 50.

### Exercício 4: Jogo de adivinhação
Crie um jogo onde o programa "pensa" em um número (predefinido) e o usuário tem 5 tentativas para acertar usando while.

### Exercício 5: Validador de CPF
Simule a validação básica de uma lista de CPFs, usando continue para pular inválidos e break se encontrar um CPF com formato muito errado.

## Respostas dos exercícios

### Resposta 1: Classificador de notas
```dart
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
```

### Resposta 2: Calculadora com switch
```dart
void main() {
  double a = 10;
  double b = 3;
  String operacao = '/';
  
  double resultado = switch (operacao) {
    '+' => a + b,
    '-' => a - b,
    '*' => a * b,
    '/' => b != 0 ? a / b : double.nan,
    _ => double.nan
  };
  
  if (resultado.isNaN) {
    print('Operação inválida ou divisão por zero!');
  } else {
    print('$a $operacao $b = $resultado');
  }
  
  // Testando várias operações
  List<String> operacoes = ['+', '-', '*', '/', '%'];
  for (String op in operacoes) {
    if (op == '%') continue; // Pula operações não implementadas
    
    double res = switch (op) {
      '+' => a + b,
      '-' => a - b,
      '*' => a * b,
      '/' => b != 0 ? a / b : double.nan,
      _ => double.nan
    };
    
    print('$a $op $b = $res');
  }
}
```

### Resposta 3: Números primos
```dart
void main() {
  print('Números primos de 2 a 50:');
  
  for (int num = 2; num <= 50; num++) {
    bool ehPrimo = true;
    
    // Verifica se num é divisível por algum número de 2 até sua raiz quadrada
    for (int divisor = 2; divisor * divisor <= num; divisor++) {
      if (num % divisor == 0) {
        ehPrimo = false;
        break; // Não precisa verificar mais divisores
      }
    }
    
    if (ehPrimo) {
      print(num);
    }
  }
}
```

### Resposta 4: Jogo de adivinhação
```dart
void main() {
  int numeroSecreto = 42;
  List<int> tentativasUsuario = [25, 50, 40, 43, 42]; // Simula entrada
  int tentativas = 0;
  int maxTentativas = 5;
  bool acertou = false;
  
  print('🎯 Jogo de Adivinhação!');
  print('Tente adivinhar o número entre 1 e 100');
  print('Você tem $maxTentativas tentativas.\n');
  
  while (tentativas < maxTentativas && !acertou) {
    int palpite = tentativasUsuario[tentativas];
    tentativas++;
    
    print('Tentativa $tentativas: $palpite');
    
    if (palpite == numeroSecreto) {
      print('🎉 Parabéns! Você acertou em $tentativas tentativa(s)!');
      acertou = true;
      break;
    } else if (palpite < numeroSecreto) {
      print('📈 Muito baixo! Tente um número maior.');
    } else {
      print('📉 Muito alto! Tente um número menor.');
    }
    
    if (tentativas < maxTentativas) {
      print('Restam ${maxTentativas - tentativas} tentativa(s).\n');
    }
  }
  
  if (!acertou) {
    print('😞 Suas tentativas acabaram! O número era $numeroSecreto');
  }
}
```

### Resposta 5: Validador de CPF
```dart
void main() {
  List<String> cpfs = [
    '123.456.789-09', 
    '987.654.321-00', 
    '111.222.333-44', 
    '12345678909',    
    '123.456.789-0A', 
    '12.3456.789-09', 
    '000.000.000-00'  
  ];
  
  print('Validador de CPFs:\n');
  
  for (String cpf in cpfs) {
    // Verifica se o CPF tem o formato correto: XXX.XXX.XXX-XX
    if (!RegExp(r'^\d{3}\.\d{3}\.\d{3}-\d{2}$').hasMatch(cpf)) {
      if (cpf.length < 14) {
        print('CPF "$cpf" está muito errado! Encerrando validação.');
        break; // Sai do loop se o formato estiver muito errado
      } else {
        print('CPF "$cpf" é inválido! Pulando para o próximo.');
        continue; // Pula CPFs com formato incorreto
      }
    }
    
    // Simulação de validação simples (aqui apenas verificamos se não é uma sequência repetida)
    if (RegExp(r'^(\d)\1{10}$').hasMatch(cpf.replaceAll(RegExp(r'\D'), ''))) {
      print('CPF "$cpf" é inválido! Pulando para o próximo.');
      continue; // Pula CPFs inválidos
    }
    
    print('CPF "$cpf" é válido! ✅');
  }
}
```

**Nome dos arquivos das respostas:**
- `resposta1_notas.dart`
- `resposta2_calculadora.dart` 
- `resposta3_primos.dart`
- `resposta4_adivinhacao.dart`
- `resposta5_cpf_validador.dart`

**DartPad:** Cole qualquer uma das respostas e clique em Run
**Local:** `dart run nome_do_arquivo.dart`

## Resumo

### 10 pontos-chave para memorizar:

1. **If/else**: Toma decisões baseadas em condições booleanas
2. **Switch clássico**: Precisa de `break` para evitar fall-through
3. **Switch expression**: Mais moderno, não precisa de `break` e retorna valores
4. **For tradicional**: Use quando souber quantas repetições precisa
5. **For-in**: Melhor para percorrer coleções sem precisar de índice
6. **While**: Repete enquanto condição for verdadeira, pode não executar nenhuma vez
7. **Do-while**: Sempre executa pelo menos uma vez antes de verificar condição
8. **Break**: Para o laço completamente
9. **Continue**: Pula para próxima iteração
10. **Operadores lógicos**: `&&` (AND), `||` (OR), `!` (NOT) combinam condições

### Dicas de quando usar cada estrutura:

- **If simples**: Decisões pontuais
- **Switch**: Múltiplas opções baseadas no mesmo valor
- **For**: Contadores e quando souber o número de repetições
- **While**: Quando a condição de parada é incerta
- **Do-while**: Menus e situações que sempre executam ao menos uma vez

## Glossário

**Break**: Comando que interrompe completamente a execução de um laço

**Continue**: Comando que pula para a próxima iteração de um laço

**Condicional**: Estrutura que executa código baseado em uma condição verdadeira ou falsa

**Do-while**: Laço que executa o código primeiro e depois verifica a condição

**Enum**: Tipo que define um conjunto fixo de valores constantes

**Fall-through**: Comportamento do switch onde casos executam em sequência sem break

**For**: Laço com inicialização, condição e incremento definidos

**For-in**: Laço otimizado para percorrer coleções

**Iteração**: Uma única execução do corpo de um laço

**Laço**: Estrutura que repete um bloco de código múltiplas vezes

**Operador lógico**: Operador que combina ou modifica valores booleanos (&&, ||, !)

**Switch**: Estrutura que seleciona código para executar baseado no valor de uma variável

**Switch expression**: Versão moderna do switch que retorna um valor

**While**: Laço que repete enquanto uma condição for verdadeira

## Referências recomendadas

1. **Documentação oficial Dart - Control Flow**: https://dart.dev/language/control-flow
2. **Dart Language Tour - Control Flow Statements**: https://dart.dev/language/tour#control-flow-statements
3. **Effective Dart - Style Guide**: https://dart.dev/effective-dart/style

**Recomendação de prática:** Antes de prosseguir, implemente pelo menos 3 dos exercícios propostos e experimente modificar os exemplos no DartPad. A prática com estruturas de controle é fundamental para todos os conceitos que virão a seguir.

**Desafio extra:** Tente criar um programa que combine todas as estruturas aprendidas: um sistema de gerenciamento de estoque que usa if para validações, switch para categorias de produtos, for para relatórios, while para menu interativo, e break/continue para controle de fluxo!

[Declaração de funções, parâmetros nomeados/posicionais, closures, arrow functions.](cap-4-funcoes-e-expressions.md)
