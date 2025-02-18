import 'dart:io';

class Proveedor {
  // Atributos de la clase Proveedor
  int ID_Proveedor;
  String Nombre;
  String Telefono;
  String CorreoElectronico;
  String Direccion;

  // Constructor de Proveedor
  Proveedor(this.ID_Proveedor, this.Nombre, this.Telefono, this.CorreoElectronico, this.Direccion);

  // Función para capturar datos del proveedor
  void capturarDatosProveedor() {
    print("Ingrese el ID del proveedor:");
    ID_Proveedor = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del proveedor:");
    Nombre = stdin.readLineSync()!;

    print("Ingrese el teléfono del proveedor:");
    Telefono = stdin.readLineSync()!;

    print("Ingrese el correo electrónico del proveedor:");
    CorreoElectronico = stdin.readLineSync()!;

    print("Ingrese la dirección del proveedor:");
    Direccion = stdin.readLineSync()!;
  }

  // Función para mostrar datos del proveedor
  void mostrarDatosProveedor() {
    print("\nDatos del Proveedor:");
    print("ID: $ID_Proveedor");
    print("Nombre: $Nombre");
    print("Teléfono: $Telefono");
    print("Correo Electrónico: $CorreoElectronico");
    print("Dirección: $Direccion");
  }
}

class Celulares {
  // Atributos de la clase Celulares
  int ID_Celular;
  String Marca;
  String Modelo;
  String Gama;
  double Precios;
  int ID_Proveedor;
  int ID_Inventario;

  // Constructor de Celulares
  Celulares(this.ID_Celular, this.Marca, this.Modelo, this.Gama, this.Precios, this.ID_Proveedor, this.ID_Inventario);

  // Función para capturar datos del celular
  void capturarDatosCelular() {
    print("Ingrese el ID del celular:");
    ID_Celular = int.parse(stdin.readLineSync()!);

    print("Ingrese la marca del celular:");
    Marca = stdin.readLineSync()!;

    print("Ingrese el modelo del celular:");
    Modelo = stdin.readLineSync()!;

    print("Ingrese la gama del celular:");
    Gama = stdin.readLineSync()!;

    print("Ingrese el precio del celular:");
    Precios = double.parse(stdin.readLineSync()!);

    print("Ingrese el ID del proveedor:");
    ID_Proveedor = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del inventario:");
    ID_Inventario = int.parse(stdin.readLineSync()!);
  }

  // Función para mostrar datos del celular
  void mostrarDatosCelular() {
    print("\nDatos del Celular:");
    print("ID: $ID_Celular");
    print("Marca: $Marca");
    print("Modelo: $Modelo");
    print("Gama: $Gama");
    print("Precio: $Precios");
    print("ID Proveedor: $ID_Proveedor");
    print("ID Inventario: $ID_Inventario");
  }
}

class Venta {
  // Atributos de la clase Venta
  int ID_Venta;
  int ID_Cliente;
  int ID_Empleado;
  String Fecha_Venta;
  List<String> Lista_productos;
  double Total_venta;
  int Cantidad;

  // Constructor de Venta
  Venta(this.ID_Venta, this.ID_Cliente, this.ID_Empleado, this.Fecha_Venta, this.Lista_productos, this.Total_venta, this.Cantidad);

  // Función para capturar datos de la venta
  void capturarDatosVenta() {
    print("Ingrese el ID de la venta:");
    ID_Venta = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del cliente:");
    ID_Cliente = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del empleado:");
    ID_Empleado = int.parse(stdin.readLineSync()!);

    print("Ingrese la fecha de la venta (dd/mm/aaaa):");
    Fecha_Venta = stdin.readLineSync()!;

    // Capturar lista de productos
    Lista_productos = [];
    print("\nIngrese los productos vendidos (deje en blanco para terminar):");
    while (true) {
      print("Nombre del producto:");
      String producto = stdin.readLineSync()!;
      if (producto.isEmpty) {
        break; // Terminar si el nombre está en blanco
      }
      Lista_productos.add(producto);
    }

    print("Ingrese el total de la venta:");
    Total_venta = double.parse(stdin.readLineSync()!);

    print("Ingrese la cantidad de productos vendidos:");
    Cantidad = int.parse(stdin.readLineSync()!);
  }

  // Función para mostrar datos de la venta
  void mostrarDatosVenta() {
    print("\nDatos de la Venta:");
    print("ID Venta: $ID_Venta");
    print("ID Cliente: $ID_Cliente");
    print("ID Empleado: $ID_Empleado");
    print("Fecha Venta: $Fecha_Venta");

    if (Lista_productos.isNotEmpty) {
      print("\nProductos vendidos:");
      for (var producto in Lista_productos) {
        print("- $producto");
      }
    } else {
      print("\nNo hay productos registrados en esta venta.");
    }

    print("Total Venta: $Total_venta");
    print("Cantidad: $Cantidad");
  }
}


void main() {
  Proveedor proveedor = Proveedor(0, "", "", "", "");
  // Llamar a la función para capturar datos del proveedor
  proveedor.capturarDatosProveedor();

  // Llamar a la función para mostrar datos del proveedor
  proveedor.mostrarDatosProveedor();
  print("");
  // Crear un objeto Celulares con valores iniciales
  Celulares celular = Celulares(0, "", "", "", 0.0, 0, 0);

  // Llamar a la función para capturar datos del celular
  celular.capturarDatosCelular();

  // Llamar a la función para mostrar datos del celular
  celular.mostrarDatosCelular();
  print("");
   // Crear un objeto Proveedor con valores iniciales
  Venta venta = Venta(0, 0, 0, "", [], 0.0, 0);

  // Llamar a la función para capturar datos de la venta
  venta.capturarDatosVenta();

  // Llamar a la función para mostrar datos de la venta
  venta.mostrarDatosVenta();
}