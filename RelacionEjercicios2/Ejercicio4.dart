void main() {
  nombreEmpleado("Isidoro");
  nombreEmpleado("Isidoro", "Abad Abenza");
}

void nombreEmpleado(String nombre, [String? apellidos]) {
  String apellidosFormateados = (apellidos == null || apellidos.trim().isEmpty)
      ? "desconocido"
      : apellidos;

  print("Empleado: $nombre\nApellidos: $apellidosFormateados");
}