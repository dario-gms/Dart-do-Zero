// Exercício 4

// Desenvolva um programa que simule o cálculo de média escolar com 3 notas, exibindo a média e se o aluno foi aprovado (>= 7.0).

void main() {
  void calcularMediaEscolar(double nota1, double nota2, double nota3) {
    // Calculando a média
    double media = (nota1 + nota2 + nota3) / 3;
    
    // Verificando aprovação
    bool aprovado = media >= 7.0;
    String status = aprovado ? "Aprovado" : "Reprovado";
    
    // Classificação da média
    String classificacao;
    if (media >= 9.0) {
      classificacao = "Excelente";
    } else if (media >= 8.0) {
      classificacao = "Ótimo";
    } else if (media >= 7.0) {
      classificacao = "Bom";
    } else if (media >= 6.0) {
      classificacao = "Regular";
    } else {
      classificacao = "Insuficiente";
    }
    
    // Exibindo resultado
    print("=== Boletim Escolar ===");
    print("Nota 1: ${nota1.toStringAsFixed(1)}");
    print("Nota 2: ${nota2.toStringAsFixed(1)}");
    print("Nota 3: ${nota3.toStringAsFixed(1)}");
    print("Média: ${media.toStringAsFixed(2)}");
    print("Status: $status");
    print("Classificação: $classificacao");
  }
  
  // Testando diferentes casos
  calcularMediaEscolar(8.5, 7.0, 9.2);
  print("");
  calcularMediaEscolar(5.5, 6.0, 6.8);
}