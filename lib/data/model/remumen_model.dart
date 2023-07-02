import 'dart:convert';

import 'package:flutter/foundation.dart';

class ResumenModel {
  final String resumen;
final List<Educacion> educaion;
final List<Experiencia> experiecnia;
  ResumenModel({
    required this.resumen,
    required this.educaion,
    required this.experiecnia,
  });

  ResumenModel copyWith({
    String? resumen,
    List<Educacion>? educaion,
    List<Experiencia>? experiecnia,
  }) {
    return ResumenModel(
      resumen: resumen ?? this.resumen,
      educaion: educaion ?? this.educaion,
      experiecnia: experiecnia ?? this.experiecnia,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'resumen': resumen,
      'educaion': educaion.map((x) => x.toMap()).toList(),
      'experiecnia': experiecnia.map((x) => x.toMap()).toList(),
    };
  }

  factory ResumenModel.fromMap(Map<String, dynamic> map) {
    return ResumenModel(
      resumen: map['resumen'] ?? '',
      educaion: List<Educacion>.from(map['educaion']?.map((x) => Educacion.fromMap(x))),
      experiecnia: List<Experiencia>.from(map['experiecnia']?.map((x) => Experiencia.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ResumenModel.fromJson(String source) => ResumenModel.fromMap(json.decode(source));

  @override
  String toString() => 'ResumenModel(resumen: $resumen, educaion: $educaion, experiecnia: $experiecnia)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ResumenModel &&
      other.resumen == resumen &&
      listEquals(other.educaion, educaion) &&
      listEquals(other.experiecnia, experiecnia);
  }

  @override
  int get hashCode => resumen.hashCode ^ educaion.hashCode ^ experiecnia.hashCode;
}

class Educacion {
  final String titulo;
  final String instituto;
  final String localidad;
  final DateTime inicio;
  final DateTime? fin;
  final String detalles;
  Educacion({
    required this.titulo,
    required this.instituto,
    required this.localidad,
    required this.inicio,
    this.fin,
    required this.detalles,
  });

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'instituto': instituto,
      'localidad': localidad,
      'inicio': inicio.millisecondsSinceEpoch,
      'fin': fin?.millisecondsSinceEpoch,
      'detalles': detalles,
    };
  }

  factory Educacion.fromMap(Map<String, dynamic> map) {
    return Educacion(
      titulo: map['titulo'] ?? '',
      instituto: map['instituto'] ?? '',
      localidad: map['localidad'] ?? '',
      inicio: DateTime.fromMillisecondsSinceEpoch(map['inicio']),
      fin: map['fin'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['fin'])
          : null,
      detalles: map['detalles'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Educacion.fromJson(String source) =>
      Educacion.fromMap(json.decode(source));
}

class Experiencia {
  final String puesto;
  final String instituto;
  final String localidad;
  final DateTime inicio;
  final DateTime? fin;
  final String detalles;
  Experiencia({
    required this.puesto,
    required this.instituto,
    required this.localidad,
    required this.inicio,
    this.fin,
    required this.detalles,
  });

  Map<String, dynamic> toMap() {
    return {
      'puesto': puesto,
      'instituto': instituto,
      'localidad': localidad,
      'inicio': inicio.millisecondsSinceEpoch,
      'fin': fin?.millisecondsSinceEpoch,
      'detalles': detalles,
    };
  }

  factory Experiencia.fromMap(Map<String, dynamic> map) {
    return Experiencia(
      puesto: map['puesto'] ?? '',
      instituto: map['instituto'] ?? '',
      localidad: map['localidad'] ?? '',
      inicio: DateTime.fromMillisecondsSinceEpoch(map['inicio']),
      fin: map['fin'] != null ? DateTime.fromMillisecondsSinceEpoch(map['fin']) : null,
      detalles: map['detalles'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Experiencia.fromJson(String source) => Experiencia.fromMap(json.decode(source));
}
