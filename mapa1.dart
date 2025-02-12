void main(){
  print("Nicolas Medina Zubia Mat 22308051281259 gpo 6-J");
  Map<int, String> alumnos = {
    1: "Nicolas", 
    2: "Medina", 
    3: "Zubia"};
  print("Mapa de alumnos: ");
  print(alumnos);

  print("iterar un map forEach");
  alumnos.forEach((key, value) {
    print("$key, $value");
  });

  print("iterar un map for in");
  for (var value in alumnos.values) {
    print("$value");
  }
}