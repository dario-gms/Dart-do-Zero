void main() {
  int nota1 = 85;
  int nota2 = 92;
  int notaMinima = 70;
  bool temPresenca = true;
  bool pagouTaxa = false;
  
  print("=== Comparações ===");
  print("Nota 1: $nota1");
  print("Nota 2: $nota2");
  print("Nota mínima: $notaMinima");
  
  // Operadores de comparação
  print("\nNota 1 > Nota 2: ${nota1 > nota2}");
  print("Nota 1 >= Nota mínima: ${nota1 >= notaMinima}");
  print("Nota 2 == 92: ${nota2 == 92}");
  print("Nota 1 != Nota 2: ${nota1 != nota2}");
  
  print("\n=== Operadores Lógicos ===");
  print("Tem presença: $temPresenca");
  print("Pagou taxa: $pagouTaxa");
  
  // Operadores lógicos
  bool aprovado = (nota1 >= notaMinima) && temPresenca;
  bool podeMatricular = temPresenca && pagouTaxa;
  bool situacaoIrregular = !temPresenca || !pagouTaxa;
  
  print("\nAprovado (nota >= 70 E tem presença): $aprovado");
  print("Pode matricular (presença E taxa paga): $podeMatricular");
  print("Situação irregular (SEM presença OU SEM taxa): $situacaoIrregular");
  
  // Expressão complexa
  bool statusFinal = (nota1 >= notaMinima && nota2 >= notaMinima) && 
                     (temPresenca && pagouTaxa);
  print("\nStatus final (todas condições): $statusFinal");
}