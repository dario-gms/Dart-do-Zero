// Crie um sistema de desconto usando closures que permita configurar diferentes tipos de desconto (percentual, valor fixo, progressivo).

void main() {
  // Criando diferentes tipos de desconto
  var descontoPercentual = criarDesconto('percentual', 0.1); // 10%
  var descontoFixo = criarDesconto('fixo', 50.0); // R$ 50
  var descontoProgressivo = criarDesconto('progressivo', 100.0); // A cada R$ 100, 5% desconto
  
  double preco = 500.0;
  
  print('Preço original: R\$ ${preco.toStringAsFixed(2)}');
  print('Com desconto percentual: R\$ ${descontoPercentual(preco).toStringAsFixed(2)}');
  print('Com desconto fixo: R\$ ${descontoFixo(preco).toStringAsFixed(2)}');
  print('Com desconto progressivo: R\$ ${descontoProgressivo(preco).toStringAsFixed(2)}');
}

Function(double) criarDesconto(String tipo, double valor) {
  switch (tipo) {
    case 'percentual':
      return (double preco) => preco * (1 - valor); // valor é percentual (0.1 = 10%)
    
    case 'fixo':
      return (double preco) => preco > valor ? preco - valor : 0.0; // desconto fixo
    
    case 'progressivo':
      return (double preco) {
        int faixas = (preco / valor).floor(); // quantas faixas de R$ valor
        double percentualDesconto = faixas * 0.05; // 5% por faixa
        percentualDesconto = percentualDesconto > 0.3 ? 0.3 : percentualDesconto; // máximo 30%
        return preco * (1 - percentualDesconto);
      };
    
    default:
      return (double preco) => preco; // sem desconto
  }
}
