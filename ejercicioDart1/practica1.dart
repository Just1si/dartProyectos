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
String firdiApellido = "La más Edgy";
saludar(firdi, firdiApellido);

}
saludar(String nombre, String apellido){
    print("Hola, $nombre $apellido");
}
