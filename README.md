# Guia de Dart: Do Zero ao Intermediário

Bem-vindo ao **Guia de Dart: Do Zero ao Intermediário** esta é uma versão complementar ao [*Guia Definitivo de Dart: Do Intermediário ao Especialista*](https://github.com/dario-gms/O-Guia-Dart), pensada para quem **começa do zero** e quer chegar preparado para seguir ao material avançado.

Este material organiza o conteúdo, apresenta a trilha de estudo e seleciona os tópicos essenciais para que qualquer pessoa, mesmo sem experiência prévia em programação, chegue ao ponto de entender e aproveitar o guia intermediário/avançado.

---

## Para quem é este guia?

* Pessoas que **não sabem Dart** (ou têm conhecimento nulo/insuficiente).
* Desenvolvedores que conhecem outra linguagem e querem aprender Dart de forma prática e direta.
* Estudantes que desejam uma base sólida para migrar depois para Flutter ou projetos backend com Dart.

---

## Objetivo

Levar o leitor do nível **iniciante** ao **intermediário** em Dart, cobrindo sintaxe, principais conceitos de programação, ferramentas essenciais, práticas idiomáticas e pequenos projetos práticos.

Ao terminar este guia o leitor deverá:

* Entender sintaxe e semântica básicas de Dart.
* Saber programar com tipos, funções, classes e coleções.
* Trabalhar com programação assíncrona (`Future`, `async`/`await`, `Stream`).
* Usar ferramentas do ecossistema (Dart SDK, `dart`, `pub`, DartPad).
* Criar pequenos projetos e ler código intermediário para migrar ao guia avançado.

---

## Como usar este material

* Cada capítulo é um arquivo independente (markdown) com exemplos e exercícios.
* Estude em ciclos: leia, digite os exemplos, execute, resolva exercícios e faça um mini-projeto por módulo.
* Use o DartPad para experimentar rapidamente (sem instalar nada) e o SDK local quando quiser projetos reais.

---

## Conteúdo / Capítulos sugeridos

1. [O que é Dart, história breve, quando usar, instalação do SDK e primeiro `hello world`.](cap-1-introducao-dart.md)  
2. [Variáveis, tipos primitivos, operadores, comentários, convenções de nome.](cap-2-fundamentos-sintaxe.md)  
3. [`if`, `switch`, laços (`for`, `while`, `do-while`), `break`/`continue`.](cap-3-controle-fluxo.md)  
4. [Declaração de funções, parâmetros nomeados/posicionais, closures, arrow functions.](cap-4-funcoes-e-expressions.md)  
5. [`List`, `Map`, `Set`, manipulação de `String` e `num`.](cap-5-colecoes-strings-numeros.md)  
6. [Classes, construtores, herança, mixins, interfaces, `abstract`.](cap-6-orientacao-a-objetos.md)  
7. [Sistema de null-safety, operadores `?`, `!`, `??`, tipos anuláveis vs não anuláveis.](cap-7-null-safety.md)  
8. [`try`/`catch`/`finally`, lançar exceções, boas práticas.](cap-8-excecoes-e-tratamento.md)  
9. [`Future`, `async`/`await`, `Stream`, manejos comuns.](cap-9-async-future-stream.md)  
10. [`pub`, `pubspec.yaml`, dependências, semver, executar scripts e criar packages simples.](cap-10-pacotes-e-ambiente.md)  
11. [Testes unitários com `test` package, organização básica de testes.](cap-11-testing-basico.md)  
12. [Convenções, formatação (`dart format`), linting (`analysis_options.yaml`).](cap-12-boas-praticas-e-styleguide.md)  
13. [Projetos pequenos (CLI, parser simples, consumo de API) para consolidar aprendizado.](cap-13-projetos-praticos.md)  
14. [Como migrar para o guia intermediário/avançado e explorar Flutter, servidores, e packages.](cap-14-proximos-passos.md)

---

## Tópicos essenciais — resumo rápido (para revisar antes do guia intermediário)

* Sintaxe básica: `var`, `final`, `const`, inferência de tipos.
* Funções e closures.
* Programação orientada a objetos em Dart.
* Null-safety — entender bem, é a base para código robusto.
* Assíncrono: `Future` e `async`/`await` (usar antes de Streams mais avançados).
* Coleções e manipulação de listas e mapas.
* Criar e usar packages locais e dependências via `pub`.
* Testes unitários básicos e organização de código.

---

## Exercícios e mini-projetos (práticos)

* **Calculadora CLI** — operações básicas e parsing de argumentos.
* **To-do simples (CLI)** — CRUD em memória com persistência simples (arquivo JSON).
* **Consumidor de API** — chamada HTTP (ex.: JSON placeholder), parse e exibição formatada.
* **Gerador de relatórios** — ler CSV/JSON e gerar sumários.

Cada projeto deve incluir testes básicos e instruções de execução.

---

## Ferramentas recomendadas

* **Dart SDK** — instalação local para projetos reais.
* **DartPad** — testar exemplos rápidos no navegador.
* **VS Code / IntelliJ** — extensões Dart para auto-complete, debugger e formatação.
* `dart format`, `dart analyze`, `dart pub`.

---

## Contribuição

Contribuições são bem-vindas: correções de texto, exemplos mais claros, novos exercícios e traduções.

* Abra issues com problemas ou sugestões.
* Envie pull requests com melhorias (um capítulo por PR ajuda a revisar).

---

## Sobre o autor

Desenvolvido por **Dário Gomes** — material aberto e colaborativo com foco em praticidade.

---

## Licença

Este trabalho está licenciado sob **Creative Commons Attribution 4.0 International (CC BY 4.0)** — uso livre com atribuição.
