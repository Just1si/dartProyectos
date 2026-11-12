void main() {
  // Ejemplos
  mostrarEmpleado(); // Usa ambos valores por defecto
  mostrarEmpleado("Ana"); // Usa el id por defecto (999)
  mostrarEmpleado("Carlos", 105); // Usa ambos valores pasados
}

void mostrarEmpleado([String? nombre, int? idEmp]) {
  // Si nombre es null o está vacío, asigna 'desconocido'
  String nombreEmpleado = (nombre == null || nombre.isEmpty)
      ? "desconocido"
      : nombre;

  // Si idEmp es null, asigna 999
  int idEmpleado = idEmp ?? 999;

  print("Empleado: $nombreEmpleado\nId empleado: $idEmpleado");
}
