// Implemente um sistema de cache simples usando closures que funcione com qualquer tipo de função.

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
