import 'package:flutter/material.dart';

import '../titulos.dart';

class SectionsViews extends StatelessWidget {
  final String title;
  final Color? color;
  final Widget view;
  const SectionsViews({
    Key? key,
    required this.title,
    this.color,
    required this.view,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Titulos(texto: title),
          const SizedBox(height: 20),
          view,
        ],
      ),
    );
  }
}
