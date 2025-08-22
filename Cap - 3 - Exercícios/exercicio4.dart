/* Exercício 4: Jogo de adivinhação
Crie um jogo onde o programa "pensa" em um número (predefinido) e o usuário tem 5 tentativas para acertar usando while.*/

void main() {
  int numeroSecreto = 42;
  List<int> tentativasUsuario = [25, 50, 40, 43, 42]; // Simula entrada
  int tentativas = 0;
  int maxTentativas = 5;
  bool acertou = false;
  
  print('🎯 Jogo de Adivinhação!');
  print('Tente adivinhar o número entre 1 e 100');
  print('Você tem $maxTentativas tentativas.\n');
  
  while (tentativas < maxTentativas && !acertou) {
    int palpite = tentativasUsuario[tentativas];
    tentativas++;
    
    print('Tentativa $tentativas: $palpite');
    
    if (palpite == numeroSecreto) {
      print('🎉 Parabéns! Você acertou em $tentativas tentativa(s)!');
      acertou = true;
      break;
    } else if (palpite < numeroSecreto) {
      print('📈 Muito baixo! Tente um número maior.');
    } else {
      print('📉 Muito alto! Tente um número menor.');
    }
    
    if (tentativas < maxTentativas) {
      print('Restam ${maxTentativas - tentativas} tentativa(s).\n');
    }
  }
  
  if (!acertou) {
    print('😞 Suas tentativas acabaram! O número era $numeroSecreto');
  }
}