import 'dart:convert';

import 'package:flutter/foundation.dart';

class PortafoliosModel {
  final List<Proyecto> portafolios;
  PortafoliosModel({
    required this.portafolios,
  });

  PortafoliosModel copyWith({
    List<Proyecto>? portafolios,
  }) {
    return PortafoliosModel(
      portafolios: portafolios ?? this.portafolios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'portafolios': portafolios.map((x) => x.toMap()).toList(),
    };
  }

  factory PortafoliosModel.fromMap(Map<String, dynamic> map) {
    return PortafoliosModel(
      portafolios: List<Proyecto>.from(
          map['portafolios']?.map((x) => Proyecto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PortafoliosModel.fromJson(String source) =>
      PortafoliosModel.fromMap(json.decode(source));

  @override
  String toString() => 'PortafoliosModel(portafolios: $portafolios)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PortafoliosModel &&
        listEquals(other.portafolios, portafolios);
  }

  @override
  int get hashCode => portafolios.hashCode;
}

class Proyecto {
  final String titulo;
  final String categoria;
  final String cliente;
  final DateTime Fecha;
  final String proyecto;
  final String description;
  Proyecto({
    required this.titulo,
    required this.categoria,
    required this.cliente,
    required this.Fecha,
    required this.proyecto,
    required this.description,
  });

  Proyecto copyWith({
    String? titulo,
    String? categoria,
    String? cliente,
    DateTime? Fecha,
    String? proyecto,
    String? description,
  }) {
    return Proyecto(
      titulo: titulo ?? this.titulo,
      categoria: categoria ?? this.categoria,
      cliente: cliente ?? this.cliente,
      Fecha: Fecha ?? this.Fecha,
      proyecto: proyecto ?? this.proyecto,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'categoria': categoria,
      'cliente': cliente,
      'Fecha': Fecha.millisecondsSinceEpoch,
      'proyecto': proyecto,
      'description': description,
    };
  }

  factory Proyecto.fromMap(Map<String, dynamic> map) {
    return Proyecto(
      titulo: map['titulo'] ?? '',
      categoria: map['categoria'] ?? '',
      cliente: map['cliente'] ?? '',
      Fecha: DateTime.fromMillisecondsSinceEpoch(map['Fecha']),
      proyecto: map['proyecto'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Proyecto.fromJson(String source) =>
      Proyecto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Proyecto(titulo: $titulo, categoria: $categoria, cliente: $cliente, Fecha: $Fecha, proyecto: $proyecto, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Proyecto &&
        other.titulo == titulo &&
        other.categoria == categoria &&
        other.cliente == cliente &&
        other.Fecha == Fecha &&
        other.proyecto == proyecto &&
        other.description == description;
  }

  @override
  int get hashCode {
    return titulo.hashCode ^
        categoria.hashCode ^
        cliente.hashCode ^
        Fecha.hashCode ^
        proyecto.hashCode ^
        description.hashCode;
  }
}
