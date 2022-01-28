import 'package:flutter/material.dart';

class Titulos extends StatelessWidget {
  final String texto;
  const Titulos({
    Key? key,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          texto,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
          height: 4,
          width: 50,
          color: Colors.blue,
        ),
      ],
    );
  }
}
