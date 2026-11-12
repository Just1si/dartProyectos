/*16- Declara en Dart un lista con los días laborables en Español y muéstrala. Añádele los 
dos días del fin de semana. Recorre la lista día por día y muéstralos por pantalla. Haz lo 
mismo con un Map que contenga una serie de nombres y edades. En estos dos últimos 
casos, usa forEach 
*/

void main() {
  // declaramos la lista con los días laborables
  List<String> dias = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
  print('Laborables: $dias');

  // añadimos los días del fin de semana
  dias.add('Sábado');
  dias.add('Domingo');

  // recorremos la lista día por día usando forEach
  print('\nLista completa de la semana:');
  dias.forEach((dia) {
    print(dia);
  });

  // declaramos un Map con nombres y edades
  Map<String, int> personas = {
    'Alexis': 25,
    'Isidoro': 34,
    'Firdi': 22,
    'Camilo': 28
  };

  // recorremos el Map usando forEach
  print('\nNombres y edades:');
  personas.forEach((nombre, edad) {
    print('$nombre: $edad años');
  });
}