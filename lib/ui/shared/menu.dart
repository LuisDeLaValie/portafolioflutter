import 'package:flutter/material.dart';
import 'package:portafolioflutter/provider/index_estatus.dart';
import 'package:provider/provider.dart';

class MenuLateral extends StatefulWidget {
  MenuLateral({Key? key}) : super(key: key);

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  bool _isExpanded = true;

  show() {
    final width = MediaQuery.of(context).size.width;
    final pro = Provider.of<IndexEstatusProvider>(context, listen: false);

    var aux = width > 1200;

    if (aux != _isExpanded) {
      setState(() {
        _isExpanded = !_isExpanded;
      });
      pro.showMenu = _isExpanded;
    }
  }

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<IndexEstatusProvider>(context);
    show();
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      width: (pro.showMenu || _isExpanded) ? 300 : 0,
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: const Color(0xff272829),
    );
  }
}
