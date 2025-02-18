import 'dart:io';

class Empleado {
  int idEmpleado;
  String nombre;
  String cargo;
  String correoElectronico;
  String telefono;

  Empleado({
    required this.idEmpleado,
    required this.nombre,
    required this.cargo,
    required this.correoElectronico,
    required this.telefono,
  });

  void capturarDatos() {
    print("Ingrese el ID del empleado:");
    idEmpleado = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del empleado:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el cargo del empleado:");
    cargo = stdin.readLineSync()!;

    print("Ingrese el correo electrónico del empleado:");
    correoElectronico = stdin.readLineSync()!;

    print("Ingrese el teléfono del empleado:");
    telefono = stdin.readLineSync()!;
  }
}

class Pedro extends Empleado {
  Pedro({
    required int idEmpleado,
    required String nombre,
    required String cargo,
    required String correoElectronico,
    required String telefono,
  }) : super(
          idEmpleado: idEmpleado,
          nombre: nombre,
          cargo: cargo,
          correoElectronico: correoElectronico,
          telefono: telefono,
        );

  void mostrarDatos() {
    print("ID Empleado: $idEmpleado");
    print("Nombre: $nombre");
    print("Cargo: $cargo");
    print("Correo Electrónico: $correoElectronico");
    print("Teléfono: $telefono");
  }
}

void main() {
  //contructor tabla
  // Crear una instancia de Pedro
  Pedro pedro = Pedro(
    idEmpleado: 0,
    nombre: "",
    cargo: "",
    correoElectronico: "",
    telefono: "",
  );
  //constructor 2

  print("Nicolas MEdina Zubia Mat:22308051281259");
  print("Informacion tabla xxx");
  // Capturar los datos desde la interfaz
  pedro.capturarDatos();

  // Mostrar los datos
  print("\nDatos del empleado Pedro:");
  pedro.mostrarDatos();
}