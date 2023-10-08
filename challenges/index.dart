import 'dart:io';
import 'dart:math';
/*
import 'dart:html';
import 'dart:svg';
*/

 //"1. Solicita al usuario un número y eleva este número al cuadrado solo si es positivo."
class Challenge1{
  void Run(){
    print("Ingresa un numero: ");
    double num = double.parse(stdin.readLineSync()!);
    if(num>0){
      double? resultado = pow(num, 2) as double?;
      print("El cuadrado del numero ingresado es: ${resultado}");
    }else if(num < 0){
      print("Numero ingresado es negativo");
    }else{
     print("Numero ingresado es cero");
    }
  } 
}

//2.Solicita al usuario dos números. Si el primero es mayor, devuelva su doble, de lo contrario devuelva el triple del segundo
class Challenge2{
  void Run(){
    print("Ingresa un numero: ");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Ingresa otro numero: ");
    double num2 = double.parse(stdin.readLineSync()!);
    if(num1>num2){
      double? resultado = num1*2;
      print("El doble del primer numero es: ${resultado}");
    }else if(num1 < num2){
      print("El triple del segundo numero es: ${num2*3}");
    }else{
     print("Numeros ingresados son iguales");
    }
  } 
}

//3.: Pide al usuario un número. Si es positivo, devuelve su raíz cuadrada, de lo contrario, devuelve su cuadrado. 
class Challenge3{
  void Run(){
    print("Ingresa un numero: ");
    double num = double.parse(stdin.readLineSync()!);
    if(num>0){
      double? resultado = sqrt(num);
      print("La raiz cuadrada del numero ingresado es: ${resultado}");
    }else if(num < 0){
      print("El cuadrado del numero ingresado es: ${pow(num, 2)} ");
    }else{
     print("Numero ingresado es cero");
    }
  } 
}

//4.  Pide al usuario el radio de un círculo y calcula su perímetro. 
class Challenge4{
    void Run(){
    print("Por favor, ingresa el radio del círculo: ");
    double radio = double.parse(stdin.readLineSync()!);
    double perimetro = 2 * pi * radio;
     print("El perimetro del circulo con radio ${radio} es ${perimetro}");
    }  
}

//5. Solicita al usuario un número entre 1 y 7 y muestra el día de la semana correspondiente, pero solo considerando los días laborables. 
class Challenge5{
  void Run(){
    print("Por favor, ingresa un numero entre 1 y 7: ");
    int num = int.parse(stdin.readLineSync()!);
    String diaSemana = "";
    switch (num) {
      case 1:
        diaSemana = "Lunes";
        break;
      case 2:
        diaSemana = "Martes";
        break;
      case 3:
        diaSemana = "Miércoles";
        break;
      case 4:
        diaSemana = "Jueves";
        break;
      case 5:
        diaSemana = "Viernes";
        break;
      default:
        print("El número ingresado no corresponde a un día laborable.");
        break;
    }
    print("El día de la semana correspondiente al número ${num} es ${diaSemana}");
  }
}

//6.Solicita al usuario su salario anual y, si este excede los 12000, muestra el impuesto a pagar que es el 15% del excedente.
class Challenge6{
  void Run(){
    print("Ingrese su salario anual: ");
    double salario = double.parse(stdin.readLineSync()!);
    double excedente = 12000;
    double impuesto;
    if (salario >= excedente) {
      impuesto = (salario-excedente) * 0.15;
      print("El impuesto a pagar es: ${impuesto}");
    }else{
      print("No excediste el valor, por ende no tienes que pagar impuestos");
    }
  }
}

//7.Solicita dos números y muestra el residuo de la división del primero entre el segundo.
class Challenge7{
  void Run(){
    print("Ingrese el primer numero: ");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Ingrese el segundo numero: ");
    double num2 = double.parse(stdin.readLineSync()!);
    double residuo = num1 % num2;
    print("El residuo de la división de ${num1} entre ${num2} es ${residuo}");
  }
}

//8.Calcula y muestra la suma de los números pares entre 1 y 50.
class Challenge8{
  void Run(){
    int suma = 0;
    for (int numero = 1; numero <= 50; numero++){
      if (numero % 2 == 0){
        suma += numero;
      }
    }
    print("La suma de los números pares entre 1 y 50 es: ${suma}");
  }
}

//9. Solicita al usuario los valores para dos fracciones y muestra la diferencia entre esas fracciones."
class Challenge9{
  void Run(){
    print("Ingresa el numerador de la primera fracción: ");
    int numerador1 = int.parse(stdin.readLineSync()!);

    print("Ingresa el denominador de la primera fracción: ");
    int denominador1 = int.parse(stdin.readLineSync()!);

    print("Ingresa el numerador de la segunda fracción: ");
    int numerador2 = int.parse(stdin.readLineSync()!);

    print("Ingresa el denominador de la segunda fracción: ");
    int denominador2 = int.parse(stdin.readLineSync()!);

    if (denominador1 == 0 || denominador2 == 0){
    print("Error: Los denominadores no pueden ser cero.");
    }else{
      int resultadoNumerador = (numerador1 * denominador2) - (numerador2 * denominador1);
      int resultadoDenominador = denominador1 * denominador2;
      print("La diferencia entre las fracciones es:  ${resultadoNumerador} / ${resultadoDenominador}");
    }
  }
}

// 10. Pide una palabra al usuario y muestra la longitud de esa palabra.
class Challenge10{
  void Run(){
    print("Por favor ingresa una palabra: ");
      String palabra = stdin.readLineSync()!;
      int longitud = palabra.length;
      print("La longitud de la palara ${palabra} es ${longitud} caracteres.");
  }
}

//11. Pide al usuario cuatro números y muestra el promedio
class Challenge11{
  void Run(){
    print("Por favor, ingresa el primer número: ");
    double numero = double.parse(stdin.readLineSync()!);
    print("Por favor, ingresa el segundo número: ");
    double numero2 = double.parse(stdin.readLineSync()!);
    print("Por favor, ingresa el tercer número: ");
    double numero3 = double.parse(stdin.readLineSync()!);
    print("Por favor, ingresa el cuarto número: ");
    double numero4 = double.parse(stdin.readLineSync()!);

    double suma = numero + numero2 + numero3 + numero4;

    double cantidadNumeros = 4;
    double promedio = suma / cantidadNumeros;
    print("El promedio de los cuatro números ingresados es: ${promedio}");
  }
}

//12. Pide al usuario cinco números y muestra el más pequeño.
class Challenge12{
  void Run(){
    print("Por favor, ingresa cinco números: ");
    double numeroMinimo = double.maxFinite;
    for (int i = 1; i <= 5; i++){
      print("Número ${i}: ");
      double numero = double.parse(stdin.readLineSync()!);
      if (numero < numeroMinimo){
        numeroMinimo = numero; 
      }
    }
    print("El numero mas pequeño ingresado es ${numeroMinimo} ");        
  }
}

//"13. Pide una palabra al usuario y devuelve el número de vocales en esa palabra"
class Challenge13{ 
  void Run() {
  // Solicita una palabra al usuario
  print("Ingresa una palabra: ");
  String palabra = stdin.readLineSync()!.toLowerCase(); // Convertimos la palabra a minúsculas para simplificar la verificación de vocales

  // Inicializamos el contador de vocales
  int contadorVocales = 0;

  // Recorremos la palabra para contar las vocales
  for (int i = 0; i < palabra.length; i++) {
    // Verificamos si el carácter actual es una vocal
    if ("aeiou".contains(palabra[i])) {
      contadorVocales++;
    }
  }

  // Muestra el número de vocales
  print("El número de vocales en la palabra '$palabra' es $contadorVocales.");
  }
}


//"14.  Pide un número al usuario y devuelve el factorial de ese número."
class Challenge14{ 
  void Run() {
    print("Por favor, ingresa un número positivo: ");
    int numero = int.parse(stdin.readLineSync()!);

    double factorial = 1; // Inicializamos el factorial en 1

    for (int i = 1; i <= numero; i++){
      factorial = factorial * i;
    }

    print("El factorial de ${numero} es ${factorial}");
  }
}

// 15. : Pide un número al usuario y verifica si está en el rango de 10 a 20 (ambos incluidos). "
class Challenge15{ 
  void Run() {
    print("Dame un numero: ");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero<=20 && numero>=10){
      print("El numero ingresado se encunetra en el rango de 10 y 20");
    }else{
      print("El numero no se encuentra en el rango de 10 y 20");
    }
  }
}
