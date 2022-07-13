class Usuario {
 final String name;
 final int edad;
 final List<String> profesiones;

  Usuario({required this.name, required this.edad, required this.profesiones});

  Usuario copyWith({ 
    String? name,
    int? edad,
    List<String>? profesiones
  }) => Usuario(name: name ?? this.name, edad: edad ?? this.edad, profesiones: profesiones ?? this.profesiones);

  
}