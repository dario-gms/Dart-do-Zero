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
