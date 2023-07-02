import 'package:flutter/material.dart';
import 'package:portafolioflutter/ui/shared/views/resume_item.dart';

import 'package:portafolioflutter/ui/shared/views/sections_views.dart';

class ResumenView extends StatelessWidget {
  final Color color;
  const ResumenView({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionsViews(
      title: 'Resumen',
      color: color,
      view: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
              'Estudiante de sistemas computacionales actual mente en curso en el Tecnológico Nacional de México ( TecNM ) campus colima, con cuatro años de experiencia en el desarrollo web y móvil con las tecnológicas net y flutter'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Educacion',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ResumeItem(
                      instituto: ' Instituto Tecnológico de Colima. ',
                      localidad: ' Villa de Álvarez, Col, México. ',
                      fechaInicio: DateTime(2018),
                      detalles: 'Este es el punto en donde me encuentro, aquí llevo mi conocimiento un paso más adelante de lo que tengo, en donde espero aprender nuevos temas y ramas de la profesional que elegí',
                    ),
                    ResumeItem(
                      encabesado: 'Tecnico en Programación',
                      instituto: ' CBTIS 19 – DGETI Colima. ',
                      localidad: ' Colima, Col, México. ',
                      fechaInicio: DateTime(2015),
                      fechaFin: DateTime(2018),
                      detalles: 'Aquí fue donde comprobé que esto es lo que quería ser, me introduje más al mundo de la programación, Sistemas Operativos ( Linux ), y más. Obtuve los fundamentos que necesitaba para poder dedicarme a lo que me apasiona.',
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Experiecia',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ResumeItem(
                      encabesado: 'Administrado de Base de datos',
                      instituto: ' SNTSS . ',
                      localidad: ' Colima, Col, México. ',
                      fechaInicio: DateTime(2021),
                      fechaFin: DateTime(2021),
                      detalles: 'Proyecto en conjunto entre dos colegas y yo para el desarrollar una página para la facilitación de la búsqueda de centro de votación para legitimación del contrato colectivo de trabajo del SNTSS.',
                    ),
                    ResumeItem(
                      encabesado: 'Desarrollo web &amp; Desarrollo Móvil',
                      instituto: ' Cositec. ',
                      localidad: ' Villa de Álvarez, Col, México. ',
                      fechaInicio: DateTime(2018),
                      detalles: 'Cómputo Sistemas y Tecnología en este lugar hice mis prácticas profesionales del bachillerato, al terminar mi servicio quedé como becario, es el lugar en donde me encuentro actualmente.',
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
