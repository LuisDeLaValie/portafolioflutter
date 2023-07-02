import 'package:flutter/material.dart';

import 'package:portafolioflutter/ui/page/index/view/about/detalles.dart';
import 'package:portafolioflutter/ui/shared/titulos.dart';
import 'package:portafolioflutter/ui/shared/views/sections_views.dart';

class AboutView extends StatelessWidget {
    final Color? color;

  const AboutView({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionsViews(
      title: 'Quién soy',
      color: color,
      view: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('img/indice.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(child: Detalles())
        ],
      ),
    );
  }
}
