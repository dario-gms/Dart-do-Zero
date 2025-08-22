/* Exercício 5: Validador de CPF
Simule a validação básica de uma lista de CPFs, usando continue para pular inválidos e break se encontrar um CPF com formato muito errado.*/

void main() {
  List<String> cpfs = [
    '123.456.789-09', // Válido
    '987.654.321-00', // Válido
    '111.222.333-44', // Válido
    '12345678909',    // Inválido (sem formatação)
    '123.456.789-0A', // Inválido (caractere não numérico)
    '12.3456.789-09', // Muito errado (formato incorreto)
    '000.000.000-00'  // Válido
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