import 'dart:io';
import 'dart:math';


void main() {

  print("Ingrese el primer numero");

  double? a = double.tryParse(stdin.readLineSync()!);
  print("ingrese el segundo numero: ");
  double? b = double.tryParse(stdin.readLineSync()!);

  const indeterminado = "Indeterminado";
  if (a != null && b != null) {
    print("suma: ${a+b}, Resta: ${a - b}, Multiplicación: ${a * b}, División: ${(b !=0 ? a / b : indeterminado)}");
  }else{
    print("Porfavor, ingrese valores numeros validos");
  }
}