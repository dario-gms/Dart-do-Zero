// Exercício 3

// Crie um programa que calcule a área e perímetro de diferentes formas geométricas (retângulo, círculo, triângulo) usando constantes apropriadas.

void main() {
  const double pi = 3.14159;
  
  // Função para retângulo
  void calcularRetangulo(double largura, double altura) {
    double area = largura * altura;
    double perimetro = 2 * (largura + altura);
    
    print("=== Retângulo ===");
    print("Largura: ${largura}m");
    print("Altura: ${altura}m");
    print("Área: ${area}m²");
    print("Perímetro: ${perimetro}m");
  }
  
  // Função para círculo
  void calcularCirculo(double raio) {
    double area = pi * raio * raio;
    double perimetro = 2 * pi * raio;
    
    print("\n=== Círculo ===");
    print("Raio: ${raio}m");
    print("Área: ${area.toStringAsFixed(2)}m²");
    print("Perímetro: ${perimetro.toStringAsFixed(2)}m");
  }
  
  // Função para triângulo
  void calcularTriangulo(double base, double altura, double lado1, double lado2) {
    double area = (base * altura) / 2;
    double perimetro = base + lado1 + lado2;
    
    print("\n=== Triângulo ===");
    print("Base: ${base}m");
    print("Altura: ${altura}m");
    print("Área: ${area}m²");
    print("Perímetro: ${perimetro}m");
  }
  
  // Testando as funções
  calcularRetangulo(5.0, 3.0);
  calcularCirculo(2.5);
  calcularTriangulo(4.0, 3.0, 5.0, 5.0);
}