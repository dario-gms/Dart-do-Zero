// Implemente uma calculadora que trabalha com juros compostos usando operações numéricas avançadas.

// Requisitos:

// Calcular juros simples e compostos
// Valor futuro e presente
// Formatação monetária

import 'dart:math' as math;

void main() {
  print('=== CALCULADORA FINANCEIRA ===\n');
  
  // Dados para os cálculos
  double capital = 1000.00; // Capital inicial
  double taxa = 0.12; // 12% ao ano
  int tempo = 5; // 5 anos
  
  print('💰 DADOS INICIAIS:');
  print('Capital inicial: ${formatarMoeda(capital)}');
  print('Taxa de juros: ${(taxa * 100).toStringAsFixed(1)}% ao ano');
  print('Período: $tempo anos\n');
  
  // 1. Juros Simples
  print('📈 JUROS SIMPLES:');
  double jurosSimples = capital * taxa * tempo;
  double montanteSimples = capital + jurosSimples;
  
  print('Juros: ${formatarMoeda(jurosSimples)}');
  print('Montante final: ${formatarMoeda(montanteSimples)}');
  print('Rentabilidade: ${((montanteSimples / capital - 1) * 100).toStringAsFixed(1)}%\n');
  
  // 2. Juros Compostos
  print('📊 JUROS COMPOSTOS:');
  double montanteComposto = capital * math.pow(1 + taxa, tempo);
  double jurosCompostos = montanteComposto - capital;
  
  print('Juros: ${formatarMoeda(jurosCompostos)}');
  print('Montante final: ${formatarMoeda(montanteComposto)}');
  print('Rentabilidade: ${((montanteComposto / capital - 1) * 100).toStringAsFixed(1)}%\n');
  
  // 3. Comparação
  double diferenca = montanteComposto - montanteSimples;
  print('🔄 COMPARAÇÃO:');
  print('Diferença (Composto - Simples): ${formatarMoeda(diferenca)}');
  print('Vantagem dos juros compostos: ${(diferenca / montanteSimples * 100).toStringAsFixed(1)}%\n');
  
  // 4. Evolução ano a ano (Juros Compostos)
  print('📅 EVOLUÇÃO ANO A ANO (Juros Compostos):');
  double saldo = capital;
  
  for (int ano = 0; ano <= tempo; ano++) {
    double jurosAno = ano == 0 ? 0 : saldo * taxa;
    if (ano > 0) {
      saldo = capital * math.pow(1 + taxa, ano);
    }
    
    print('Ano $ano: ${formatarMoeda(saldo)} ${ano > 0 ? "(+${formatarMoeda(jurosAno)} em juros)" : "(inicial)"}');
  }
  print('');
  
  // 5. Valor Presente e Valor Futuro
  print('💡 CÁLCULOS AVANÇADOS:');
  
  double valorFuturo = 2000.00; // Quanto queremos ter no futuro
  double valorPresenteNecessario = valorFuturo / math.pow(1 + taxa, tempo);
  
  print('Para ter ${formatarMoeda(valorFuturo)} em $tempo anos,');
  print('você precisa investir hoje: ${formatarMoeda(valorPresenteNecessario)}\n');
  
  // 6. Simulação de aportes mensais
  print('🎯 SIMULAÇÃO COM APORTES MENSAIS:');
  
  double aporteMensal = 100.00;
  double taxaMensal = math.pow(1 + taxa, 1/12) - 1; // Taxa mensal equivalente
  int meses = tempo * 12;
  
  // Fórmula do valor futuro de uma anuidade
  double montanteAportes = aporteMensal * ((math.pow(1 + taxaMensal, meses) - 1) / taxaMensal);
  double totalAportado = capital + (aporteMensal * meses);
  double jurosTotal = montanteAportes + capital - totalAportado;
  
  print('Investimento inicial: ${formatarMoeda(capital)}');
  print('Aporte mensal: ${formatarMoeda(aporteMensal)}');
  print('Total aportado: ${formatarMoeda(totalAportado)}');
  print('Montante final: ${formatarMoeda(montanteAportes + capital)}');
  print('Juros ganhos: ${formatarMoeda(jurosTotal)}');
  print('Rentabilidade total: ${(jurosTotal / totalAportado * 100).toStringAsFixed(1)}%\n');
  
  // 7. Tempo para dobrar o investimento
  print('⏰ TEMPO PARA DOBRAR O INVESTIMENTO:');
  
  // Regra prática: Regra do 72
  double tempoRegra72 = 72 / (taxa * 100);
  
  // Cálculo exato
  double tempoExato = math.log(2) / math.log(1 + taxa);
  
  print('Regra do 72: ${tempoRegra72.toStringAsFixed(1)} anos');
  print('Cálculo exato: ${tempoExato.toStringAsFixed(1)} anos\n');
  
  // 8. Diferentes cenários de taxa
  print('🎲 DIFERENTES CENÁRIOS DE TAXA:');
  
  List<double> taxasCenarios = [0.08, 0.10, 0.12, 0.15, 0.20]; // 8%, 10%, 12%, 15%, 20%
  
  print('Capital: ${formatarMoeda(capital)}, Tempo: $tempo anos');
  print('Taxa\tMontante\tJuros\t\tRentabilidade');
  print('-' * 55);
  
  for (double taxaCenario in taxasCenarios) {
    double montante = capital * math.pow(1 + taxaCenario, tempo);
    double juros = montante - capital;
    double rentabilidade = (montante / capital - 1) * 100;
    
    print('${(taxaCenario * 100).toStringAsFixed(0)}%\t'
          '${formatarMoedaCurto(montante)}\t\t'
          '${formatarMoedaCurto(juros)}\t\t'
          '${rentabilidade.toStringAsFixed(1)}%');
  }
  
  print('\n✨ DICAS IMPORTANTES:');
  print('• Juros compostos são mais vantajosos a longo prazo');
  print('• Aportes regulares potencializam os ganhos');
  print('• Quanto maior o tempo, maior o efeito dos juros compostos');
  print('• Uma pequena diferença na taxa faz grande diferença no resultado final');
}

// Função para formatar valores em reais
String formatarMoeda(double valor) {
  return 'R\$ ${valor.toStringAsFixed(2).replaceAll('.', ',')}';
}

// Função para formatar valores em formato mais curto
String formatarMoedaCurto(double valor) {
  if (valor >= 1000) {
    return 'R\$ ${(valor/1000).toStringAsFixed(1)}k';
  }
  return 'R\$ ${valor.toStringAsFixed(0)}';
}
