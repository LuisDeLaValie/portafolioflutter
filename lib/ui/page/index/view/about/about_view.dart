import 'package:flutter/material.dart';
import 'package:portafolioflutter/ui/page/index/view/about/detalles.dart';
import 'package:portafolioflutter/ui/shared/titulos.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Titulos(texto: 'Quién soy'),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage("img/indice.png"),
                width: 300,
              ),
              const SizedBox(width: 20),
              Expanded(child: Detalles())
            ],
          )
        ],
      ),
    );
  }
}
