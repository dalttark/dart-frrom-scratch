import 'dart:io';

void main() {
  print('Hola!');
  print('Escribe tu nombre: ');
  String? nameInput = stdin.readLineSync();
  print("Un gusto conocerte $nameInput ");
  print("Escribe tu fecha de Nac en dd/mm/yyyy");
  String? birthdayInput = stdin.readLineSync();
  DateTime? dateConverted = _convertToDateTime(birthdayInput!);
  if (dateConverted == null) {
    print("la fecha de nac es invalida, nos enviaste: $birthdayInput");
    return;
  }

  var person = Person(
    name: nameInput,
    birthday: dateConverted,
    age: DateTime.now().year - dateConverted.year,
  ); //Person

  print("Tu nombre: ${person.name}");
  print("Tu fec de nac: ${person.birthday}");
  print("Tu edad es: ${person.age} años!");
}

DateTime? _convertToDateTime(String date) {
  List<String> parts = date.split('/');
  if (parts.length != 3) return null;
  return DateTime.tryParse("${parts[2]}-${parts[1]}-${parts[0]}");
}

class Person {
  final String? name;
  final DateTime? birthday;
  final int? age;
  Person({this.name, this.birthday, this.age});
}
