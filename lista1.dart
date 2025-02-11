void main() {  
  // lista tipo entero de 3 elementos
   List<int> numeros = [10, 20, 30];
   print("Lista de numeros enteros: ");
   print(numeros); //10
   print("primer elemento: ${numeros[0]}");
   print("segundo elemento: ${numeros[1]}");
   print("tercer elemento: ${numeros[2]}");
   print("elementos de la lista usando ciclo for: ");
    for (int i = 0; i < numeros.length; i++) {
      print(numeros[i]);
    }

}  