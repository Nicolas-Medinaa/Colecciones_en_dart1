class figura {
  int _largo;
  int _ancho;

  figura(this._largo, this._ancho);

  void mostrar() {
    print('Largo: $_largo');
    print('Ancho: $_ancho');
  }// funcion mostrar

  void CalcularArea(){
    int area = _largo * _ancho;
    print('Area: $area');
  }// funcion calcular area
  void CalcularPerimetro(){
    int perimetro = 2 * (_largo + _ancho);
    print('Perimetro: $perimetro');
  }// funcion calcular perimetro
}// clase figura

void main(){
  print ("Nicolas Medina Zubia Mat 22308051281259 gpo 6j");
  var rectangulo = figura(10, 5);
  rectangulo.mostrar();
  //
  rectangulo.CalcularArea();
  rectangulo.CalcularPerimetro();
}