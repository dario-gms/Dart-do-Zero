// Desenvolva um programa que calcule a área de um retângulo (largura × altura) e mostre o resultado formatado.

void main() {
  double largura = 5.5;
  double altura = 3.2;
  
  double area = largura * altura;
  
  print('Retângulo: ${largura}m × ${altura}m');
  print('Área: ${area.toStringAsFixed(2)} m²');
}