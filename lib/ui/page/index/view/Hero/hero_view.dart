import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroView extends StatelessWidget {
  final String nombre;
  final String apellidos;
  final List<String> puestos;
  HeroView({
    Key? key,
    required this.nombre,
    required this.apellidos,
    required this.puestos,
  }) : super(key: key);

  final TextStyle h1 = const TextStyle(
      color: Colors.white,
      fontSize: 64,
      fontWeight: FontWeight.w700,
      fontFamily: 'Agne');
  final TextStyle p = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 26,
  );

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        image: DecorationImage(
            image: AssetImage('img/fondo.jpg'), fit: BoxFit.cover),
      ),
      child: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nombre, style: h1, textAlign: TextAlign.start),
              Text(apellidos, style: h1, textAlign: TextAlign.start),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Soy ", style: p),
                  Container(
                    padding: const EdgeInsets.only(bottom: 4),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.blue,
                      width: 4, // This would be the width of the underline
                    ))),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: puestos
                          .map((e) => TyperAnimatedText(
                                e,
                                textStyle: p,
                                speed: const Duration(milliseconds: 100),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
