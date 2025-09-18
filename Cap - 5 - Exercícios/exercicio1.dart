//Crie um programa que analise vendas mensais usando List e calcule estatísticas básicas.

// Requisitos:

// Lista com vendas de 12 meses
// Calcule: total, média, maior e menor venda
// Identifique o mês com melhor desempenho

void main() {
  // Vendas mensais em milhares de reais
  List<double> vendasMensais = [
    45.5, 52.3, 38.7, 61.2, 48.9, 55.6,
    72.1, 68.4, 51.3, 59.8, 66.7, 74.2
  ];
  
  List<String> meses = [
    'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
    'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
  ];
  
  print('=== ANÁLISE DE VENDAS ANUAIS ===\n');
  
  // Total e média
  double total = 0;
  for (double venda in vendasMensais) {
    total += venda;
  }
  double media = total / vendasMensais.length;
  
  print('Total de vendas: R\$ ${total.toStringAsFixed(1)}k');
  print('Média mensal: R\$ ${media.toStringAsFixed(1)}k');
  
  // Maior e menor venda
  double maiorVenda = vendasMensais[0];
  double menorVenda = vendasMensais[0];
  int indiceMaior = 0;
  int indiceMenor = 0;
  
  for (int i = 1; i < vendasMensais.length; i++) {
    if (vendasMensais[i] > maiorVenda) {
      maiorVenda = vendasMensais[i];
      indiceMaior = i;
    }
    if (vendasMensais[i] < menorVenda) {
      menorVenda = vendasMensais[i];
      indiceMenor = i;
    }
  }
  
  print('Maior venda: R\$ ${maiorVenda.toStringAsFixed(1)}k em ${meses[indiceMaior]}');
  print('Menor venda: R\$ ${menorVenda.toStringAsFixed(1)}k em ${meses[indiceMenor]}');
  
  // Meses acima da média
  print('\nMeses acima da média:');
  for (int i = 0; i < vendasMensais.length; i++) {
    if (vendasMensais[i] > media) {
      double diferenca = vendasMensais[i] - media;
      print('- ${meses[i]}: R\$ ${vendasMensais[i].toStringAsFixed(1)}k (+${diferenca.toStringAsFixed(1)}k)');
    }
  }
}
