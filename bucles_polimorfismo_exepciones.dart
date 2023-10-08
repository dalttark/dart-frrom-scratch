import 'dart:io';
import 'dart:math';


void main() {
  Circulo circ = Circulo();
  circ.radio = 20;
  var result_area = circ.area();
  var result_perim = circ.perimetro();



  print(
    "El area es: ${result_area} y el perimetro es: ${result_perim} el nuevo radio es : ${circ.add10()}");
  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  try{
    print("numero a dividir");
    double n = double.parse(stdin.readLineSync()!);
    print("Divisor");
    double divisor = double.parse(stdin.readLineSync()!);
    if (divisor == 0) {
      throw ArgumentError("No se puede dividir por 0");
    }

    print("Resultado: ${n / divisor}"); 
  }on ArgumentError catch (e) {
    print(e.message);
  }catch(e){
    print("Error desconocido.");
  }
}

abstract class ExtraCalculations {
  double add10();
}

abstract class Figura {
  double area();
  double perimetro();
}

class Circulo implements Figura, ExtraCalculations{
  double? radio;
  
  double area() => pi * radio! * radio!;

  double perimetro() => 2* pi * radio!;

  double add10(){
    return radio! + 10;
  }
}
