void main() {
  // Parâmetros opcionais posicionais
  print(formatarMoeda(100.50));
  print(formatarMoeda(100.50, 'USD'));
  print(formatarMoeda(100.50, 'EUR', 3));
  
  print('---');
  
  // Parâmetros opcionais nomeados
  enviarEmail(
    para: 'usuario@example.com',
    assunto: 'Bem-vindo!'
  );
  
  enviarEmail(
    para: 'cliente@empresa.com',
    assunto: 'Confirmação de Pedido',
    corpo: 'Seu pedido foi confirmado com sucesso!',
    prioridade: 'alta'
  );
  
  // Criando URLs flexíveis
  print(construirUrl('api.exemplo.com'));
  print(construirUrl('api.exemplo.com', porta: 8080));
  print(construirUrl('api.exemplo.com', ssl: false, porta: 3000));
}

// Parâmetros opcionais posicionais (entre colchetes)
String formatarMoeda(double valor, [String moeda = 'BRL', int decimais = 2]) {
  String simbolo = moeda == 'BRL' ? 'R\$' : 
                   moeda == 'USD' ? '\$' : 
                   moeda == 'EUR' ? '€' : moeda;
  
  return '$simbolo ${valor.toStringAsFixed(decimais)}';
}

// Parâmetros opcionais nomeados
void enviarEmail({
  required String para,
  required String assunto,
  String corpo = 'Mensagem vazia',
  String prioridade = 'normal'
}) {
  print('📧 Email enviado:');
  print('Para: $para');
  print('Assunto: $assunto');
  print('Corpo: $corpo');
  print('Prioridade: $prioridade');
  print('');
}

String construirUrl(String host, {bool ssl = true, int? porta}) {
  String protocolo = ssl ? 'https' : 'http';
  String portaStr = porta != null ? ':$porta' : '';
  
  return '$protocolo://$host$portaStr';
}
