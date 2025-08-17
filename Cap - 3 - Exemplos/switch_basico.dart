// Definindo um enum para dias da semana
enum DiaSemana { segunda, terca, quarta, quinta, sexta, sabado, domingo }

void main() {
  DiaSemana hoje = DiaSemana.sexta;
  
  // Switch clássico
  switch (hoje) {
    case DiaSemana.segunda:
      print('Começou a semana! Força!');
      break;
    case DiaSemana.terca:
      print('Terça de produtividade!');
      break;
    case DiaSemana.quarta:
      print('Meio da semana!');
      break;
    case DiaSemana.quinta:
      print('Quinta, quase chegando!');
      break;
    case DiaSemana.sexta:
      print('SEXTOU! 🎉');
      break;
    case DiaSemana.sabado:
    case DiaSemana.domingo:
      print('Final de semana relaxante!');
      break;
  }
  
  // Switch expression (mais moderno, Dart 3.0+)
  String mensagem = switch (hoje) {
    DiaSemana.segunda => 'Começou a semana!',
    DiaSemana.terca => 'Terça produtiva!',
    DiaSemana.quarta => 'Meio da semana!',
    DiaSemana.quinta => 'Quinta-feira!',
    DiaSemana.sexta => 'SEXTOU!',
    DiaSemana.sabado || DiaSemana.domingo => 'Final de semana!'
  };
  
  print('Switch expression: $mensagem');
}
