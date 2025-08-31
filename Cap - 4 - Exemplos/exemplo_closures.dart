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
