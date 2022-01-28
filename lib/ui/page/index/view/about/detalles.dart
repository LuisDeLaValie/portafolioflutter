import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Detalles extends StatelessWidget {
  Detalles({Key? key}) : super(key: key);

  final datos = {
    "Cumpleaños":
        DateFormat("MMMM d, yyyy", "es").format(DateTime(2000, 2, 21)),
    "Edad": 21,
    "Ciudad": "Colima, Col, México ",
    "Título": "Técnico en Programación"
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Backend Developer & Web Developer.",
            style: GoogleFonts.raleway(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color(0xff173b6c),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Mexicano, originario de Colima, especializado en el desarrollo de aplicaciones web y aplicaciones móviles. Apasionado de aprender nuevas tecnologías para innovar",
            style: GoogleFonts.openSans(
              fontSize: 18,
            ),
          ),
          Container(
            height: 100,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 10,
              shrinkWrap: true,
              children: datos.entries
                  .map((e) => Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                          ),
                          Text.rich(
                            TextSpan(
                              text: "${e.key}: ",
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                color: const Color(0xff173b6c),
                                fontWeight: FontWeight.bold
                              ),
                              children: [
                                TextSpan(
                                  text: e.value.toString(),
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: const Color(0xff173b6c),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
                  .toList(),
            ),
          ),
          Text(
            "Con cuatro años de experiencia en el desarrollo web con la tecnología Net y desarrollo móvil con con la tecnología flutter",
            style: GoogleFonts.openSans(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
