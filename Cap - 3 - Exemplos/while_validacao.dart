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