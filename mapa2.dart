void main(){
  print("Nicolas Medina Zubia Mat 22308051281259 gpo 6-J");
  Map<String, dynamic> Proveedor = {
    "ID_Proveedor": "1", 
    "Nombre": "Apple", 
    "Telefono": "6141234567",
    "Correo_electronico": "Apple@gmail.com",
    "Direccion": "Calle zorgo 123",
    "Listas de productos": "Telefonos iPhone"};
  
  
  print("Tabla Provedor: ");
  print(Proveedor);

  print("");
  print("Tabla Provedor: ");
  Proveedor.forEach((key, value) {
    print("$key, $value");
  });

  print("");
  print("Tabla Provedor: ");
  for (var value in Proveedor.values) {
    print("$value");
  }

  print("");
  print("Nicolas Medina Zubia Mat 22308051281259 gpo 6-J");
  Map<String, dynamic> Celular = {
    "ID_Celular": "2", 
    "Marca": "Apple", 
    "Modelo": "Pro Max",
    "Gama": "Alta",
    "Precios": "16000 - 20000",
    "ID_Proveedor": "1",
    "ID_Inventario": "3"};
  
  print("Tabla Celulares: ");
  print(Celular);

  print("");
  print("Tabla Celulares: ");
  Celular.forEach((key, value) {
    print("$key, $value");
  });

  print("");
  print("Tabla Celulares: ");
  for (var value in Celular.values) {
    print("$value");
  }
}