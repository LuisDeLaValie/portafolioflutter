import 'package:flutter/material.dart';
import 'package:tdtxle_fonts/tdtxle_fonts.dart';

class SkillsShortIcon extends StatefulWidget {
  const SkillsShortIcon({Key? key}) : super(key: key);

  @override
  State<SkillsShortIcon> createState() => _SkillsShortIconState();
}

class _SkillsShortIconState extends State<SkillsShortIcon> {
  Color _color = Color(0xff212431);
  Color _hover = Color(0xff149ddd);
  Color color = Color(0xff212431);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        onTap: () {},
        onHover: (value) {
          setState(() {
            color = value ? _hover : _color;
          });
        },
        child: Container(
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Icon(IconsTDTxLE.nf_custom_electron, color: Colors.white, size: 50),
        ),
      ),
    );
  }
}
