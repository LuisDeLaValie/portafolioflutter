import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ResumeItem extends StatelessWidget {
  final String? encabesado;
  final String instituto;
  final String localidad;
  final DateTime fechaInicio;
  final DateTime? fechaFin;
  final String detalles;
  const ResumeItem({
    Key? key,
    this.encabesado,
    required this.instituto,
    required this.localidad,
    required this.fechaInicio,
    this.fechaFin,
    required this.detalles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var perido = setPeriodo();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (encabesado != null)
            Text(
              encabesado!,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          SizedBox(height: 10),
          Text(perido),
          SizedBox(height: 10),
          Text(instituto),
          Text(localidad),
          SizedBox(height: 10),
          Text(detalles),
        ],
      ),
    );
  }

  String setPeriodo() {
    var hoy = DateTime.now();
    String periodo = "";
    if (fechaFin == null) {
      var dif = hoy.difference(fechaInicio);
      if (dif.inDays < 365) {
        periodo =
            DateFormat("MMM yyyy", "es").format(fechaInicio) + " - Presente";
      } else {
        periodo = "${fechaInicio.year} - Presente";
      }
    } else {
      var dif = fechaInicio.difference(hoy);
      if (dif.inDays < 365) {
        periodo = DateFormat("MMM yyyy", "es").format(fechaInicio) +
            " - " +
            DateFormat("MMM yyyy", "es").format(fechaFin!);
      } else {
        periodo = "${fechaInicio.year} - ${fechaFin!.year}";
      }
    }
    return periodo;
  }
}
