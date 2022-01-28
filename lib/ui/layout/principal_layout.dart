import 'package:flutter/material.dart';
import 'package:portafolioflutter/ui/shared/menu.dart';

class PrincipalLayout extends StatelessWidget {
  final Widget body;
  const PrincipalLayout({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MenuLateral(),
          Expanded(child: body),
        ],
      ),
    );
  }
}
