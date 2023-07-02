import 'package:flutter/material.dart';
import 'package:portafolioflutter/ui/page/index/view/skils/skills_short_icon.dart';

import 'package:portafolioflutter/ui/shared/views/sections_views.dart';

class SkillsView extends StatelessWidget {
  final Color? color;
  SkillsView({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionsViews(
      title: 'habilidades',
      color: color,
      view: Wrap(
        children: [
          SkillsShortIcon(),
          SkillsShortIcon(),
          SkillsShortIcon(),
          SkillsShortIcon(),
          SkillsShortIcon(),
          SkillsShortIcon(),
        ],
      ),
    );
  }
}
