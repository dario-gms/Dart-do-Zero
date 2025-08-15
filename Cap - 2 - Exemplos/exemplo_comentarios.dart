/*
Este é um exemplo completo demonstrando
diferentes tipos de comentários em Dart
Autor: Equipe de Desenvolvimento
Data: 2024
*/

/// Classe que representa uma conta bancária
/// 
/// Esta classe encapsula informações básicas de uma conta
/// como titular, saldo e operações básicas
class ContaBancaria {
  String titular;
  double saldo;
  
  /// Construtor da conta bancária
  /// 
  /// [titular] deve ser um nome válido
  /// [saldo] deve ser maior ou igual a zero
  ContaBancaria(this.titular, this.saldo);
  
  /// Realiza um depósito na conta
  /// 
  /// [valor] deve ser positivo
  /// Retorna o novo saldo após o depósito
  double depositar(double valor) {
    // Validação de entrada
    if (valor <= 0) {
      print("Erro: Valor deve ser positivo");
      return saldo; // Retorna saldo atual sem alterar
    }
    
    saldo += valor; // Adiciona o valor ao saldo
    return saldo;
  }
}

void main() {
  // Criando uma nova conta
  var conta = ContaBancaria("João Silva", 1000.0);
  
  print("=== Sistema Bancário ===");
  print("Titular: ${conta.titular}");
  print("Saldo inicial: R\$ ${conta.saldo.toStringAsFixed(2)}");
  
  // Realizando operações
  double novoSaldo = conta.depositar(250.50);
  print("Após depósito: R\$ ${novoSaldo.toStringAsFixed(2)}");
  
  // Teste com valor inválido
  conta.depositar(-100); // Deve exibir erro
  
  /*
  Próximas funcionalidades a implementar:
  - Método de saque
  - Histórico de transações
  - Limites de conta
  */
  
  print("Saldo final: R\$ ${conta.saldo.toStringAsFixed(2)}");
}