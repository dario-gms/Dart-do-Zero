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
