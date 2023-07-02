import 'dart:convert';

class PersonalModel {
  final String nombres;
  final String Apellidos;
  final String sobremi;
  final String ciudad;
  final String titulo;
  final String labor;
  final String email;
  final List<Redes> redes;
  PersonalModel({
    required this.nombres,
    required this.Apellidos,
    required this.sobremi,
    required this.ciudad,
    required this.titulo,
    required this.labor,
    required this.email,
    required this.redes,
  });

  Map<String, dynamic> toMap() {
    return {
      'nombres': nombres,
      'Apellidos': Apellidos,
      'sobremi': sobremi,
      'ciudad': ciudad,
      'titulo': titulo,
      'labor': labor,
      'email': email,
      'redes': redes.map((x) => x.toMap()).toList(),
    };
  }

  factory PersonalModel.fromMap(Map<String, dynamic> map) {
    return PersonalModel(
      nombres: map['nombres'] ?? '',
      Apellidos: map['Apellidos'] ?? '',
      sobremi: map['sobremi'] ?? '',
      ciudad: map['ciudad'] ?? '',
      titulo: map['titulo'] ?? '',
      labor: map['labor'] ?? '',
      email: map['email'] ?? '',
      redes: List<Redes>.from(map['redes']?.map((x) => Redes.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonalModel.fromJson(String source) =>
      PersonalModel.fromMap(json.decode(source));
}

class Redes {
  final String nombre;
  final String url;
  final String icono;
  Redes({
    required this.nombre,
    required this.url,
    required this.icono,
  });

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'url': url,
      'icono': icono,
    };
  }

  factory Redes.fromMap(Map<String, dynamic> map) {
    return Redes(
      nombre: map['nombre'] ?? '',
      url: map['url'] ?? '',
      icono: map['icono'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Redes.fromJson(String source) => Redes.fromMap(json.decode(source));
}
