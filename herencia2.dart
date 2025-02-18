import 'dart:io';

class Celulares {
  int idCelular;
  String marca;
  String modelo;
  String gama;
  double precios;
  int idProveedor;
  int idInventario;

  Celulares({
    required this.idCelular,
    required this.marca,
    required this.modelo,
    required this.gama,
    required this.precios,
    required this.idProveedor,
    required this.idInventario,
  });

  void capturarDatos() {
    print("Ingrese el ID del celular:");
    idCelular = int.parse(stdin.readLineSync()!);

    print("Ingrese la marca del celular:");
    marca = stdin.readLineSync()!;

    print("Ingrese el modelo del celular:");
    modelo = stdin.readLineSync()!;

    print("Ingrese la gama del celular:");
    gama = stdin.readLineSync()!;

    print("Ingrese el precio del celular:");
    precios = double.parse(stdin.readLineSync()!);

    print("Ingrese el ID del proveedor:");
    idProveedor = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del inventario:");
    idInventario = int.parse(stdin.readLineSync()!);
  }
}

class Celulares2 {
  // Esta es la clase base para Celulares1
  void mostrarDatos() {
    print("Esta es la clase Celulares2");
  }
}

class Celulares1 extends Celulares2 {
  Celulares celular;

  Celulares1({
    required this.celular,
  });

  @override
  void mostrarDatos() {
    print("\nDatos del celular:");
    print("ID Celular: ${celular.idCelular}");
    print("Marca: ${celular.marca}");
    print("Modelo: ${celular.modelo}");
    print("Gama: ${celular.gama}");
    print("Precio: \$${celular.precios}");
    print("ID Proveedor: ${celular.idProveedor}");
    print("ID Inventario: ${celular.idInventario}");
  }
}

class Inventario {
  int idInventario;
  int idEmpleado;
  int idCelular;
  int cantidadInventario;
  String fechaInventario;

  Inventario({
    required this.idInventario,
    required this.idEmpleado,
    required this.idCelular,
    required this.cantidadInventario,
    required this.fechaInventario,
  });

  void capturarDatos() {
    print("Ingrese el ID del inventario:");
    idInventario = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del empleado:");
    idEmpleado = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del celular:");
    idCelular = int.parse(stdin.readLineSync()!);

    print("Ingrese la cantidad en inventario:");
    cantidadInventario = int.parse(stdin.readLineSync()!);

    print("Ingrese la fecha del inventario (YYYY-MM-DD):");
    fechaInventario = stdin.readLineSync()!;
  }
}

class Inventario2 {
  // Esta es la clase base para Inventario1
  void mostrarDatos() {
    print("Esta es la clase Inventario2");
  }
}

class Inventario1 extends Inventario2 {
  Inventario inventario;

  Inventario1({
    required this.inventario,
  });

  @override
  void mostrarDatos() {
    print("\nDatos del inventario:");
    print("ID Inventario: ${inventario.idInventario}");
    print("ID Empleado: ${inventario.idEmpleado}");
    print("ID Celular: ${inventario.idCelular}");
    print("Cantidad en Inventario: ${inventario.cantidadInventario}");
    print("Fecha de Inventario: ${inventario.fechaInventario}");
  }
}

void main() {
  print("Nicolas MEdina Zubia Mat:22308051281259");
  // Crear una instancia de Celulares
  print("");
  Celulares celular = Celulares(
    idCelular: 0,
    marca: "",
    modelo: "",
    gama: "",
    precios: 0.0,
    idProveedor: 0,
    idInventario: 0,
    
  );

  // Capturar los datos desde la interfaz
  celular.capturarDatos();

  // Crear una instancia de Celulares1
  Celulares1 celulares1 = Celulares1(celular: celular);

  print("");
  // Mostrar los datos
  celulares1.mostrarDatos();

    Inventario inventario = Inventario(
    idInventario: 0,
    idEmpleado: 0,
    idCelular: 0,
    cantidadInventario: 0,
    fechaInventario: "",
  );

  // Capturar los datos desde la interfaz
  inventario.capturarDatos();

  // Crear una instancia de Inventario1
  Inventario1 inventario1 = Inventario1(inventario: inventario);

  // Mostrar los datos
  inventario1.mostrarDatos();
}