import 'dart:convert';

import 'package:flutter/foundation.dart';

class SkillsModel {
  final List<Skill> skills;
  SkillsModel({
    required this.skills,
  });

  SkillsModel copyWith({
    List<Skill>? skills,
  }) {
    return SkillsModel(
      skills: skills ?? this.skills,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'skills': skills.map((x) => x.toMap()).toList(),
    };
  }

  factory SkillsModel.fromMap(Map<String, dynamic> map) {
    return SkillsModel(
      skills: List<Skill>.from(map['skills']?.map((x) => Skill.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillsModel.fromJson(String source) => SkillsModel.fromMap(json.decode(source));

  @override
  String toString() => 'SkillsModel(skills: $skills)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SkillsModel &&
      listEquals(other.skills, skills);
  }

  @override
  int get hashCode => skills.hashCode;
}

class Skill {
final String titulo;
final String Icon;
  Skill({
    required this.titulo,
    required this.Icon,
  });

  Skill copyWith({
    String? titulo,
    String? Icon,
  }) {
    return Skill(
      titulo: titulo ?? this.titulo,
      Icon: Icon ?? this.Icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'Icon': Icon,
    };
  }

  factory Skill.fromMap(Map<String, dynamic> map) {
    return Skill(
      titulo: map['titulo'] ?? '',
      Icon: map['Icon'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Skill.fromJson(String source) => Skill.fromMap(json.decode(source));

  @override
  String toString() => 'Skill(titulo: $titulo, Icon: $Icon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Skill &&
      other.titulo == titulo &&
      other.Icon == Icon;
  }

  @override
  int get hashCode => titulo.hashCode ^ Icon.hashCode;
}
