import 'dart:io';

void main(){

String nombre = "Isidoro";
String apellido = "Abad";
print("Hola, $nombre $apellido");

int contador = 0;
contador++;
while(contador < 5){
    print("El programa se ha ejecutado $contador veces");
    contador++;
    }

String firdi = "Firdi";
String firdiApellido = "The Edgiest";
saludar(firdi, firdiApellido);

print("Introduce tu fecha de nacimiento (dd/mm/yyyy):");

String fechaNacimientoInput = stdin.readLineSync()!;

List<String> fechaNacimientoParts = fechaNacimientoInput.split('/');
int dia = int.parse(fechaNacimientoParts[0]);
int mes = int.parse(fechaNacimientoParts[1]);
int anio = int.parse(fechaNacimientoParts[2]);

DateTime fechaNacimiento = DateTime(anio, mes, dia);

int diasFaltantes = diasCumpleanos(fechaNacimiento);

print("Faltan $diasFaltantes días para tu cumpleaños.");

}
/*
 * Saluda a una persona con su nombre y apellido.
 */
void saludar(String nombre, String apellido){
    print("Hola, $nombre $apellido");
}

/*Calcula los días que faltan para el cumpleaños de una persona.
  */
int diasCumpleanos(DateTime fechaNacimiento){

  DateTime hoy = DateTime.now();

  DateTime proximoCumpleanos = DateTime(hoy.year, fechaNacimiento.month, fechaNacimiento.day);

  if(proximoCumpleanos.isBefore(hoy) || proximoCumpleanos.isAtSameMomentAs(hoy)){
    proximoCumpleanos = DateTime(hoy.year + 1, fechaNacimiento.month, fechaNacimiento.day);
  }

  Duration diferencia = proximoCumpleanos.difference(hoy);
  return diferencia.inDays+1;

}
