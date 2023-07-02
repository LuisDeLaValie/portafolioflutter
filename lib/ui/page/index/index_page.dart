import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:portafolioflutter/provider/index_estatus.dart';

import 'package:portafolioflutter/ui/layout/principal_layout.dart';

import 'view/Hero/hero_view.dart';
import 'view/about/about_view.dart';
import 'view/portafolio/portafolio_view.dart';
import 'view/resum/resumen_view.dart';
import 'view/skils/skills_view.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => IndexEstatusProvider(),
      child: PrincipalLayout(
        body: ListView(
          children: [
            HeroView(
              apellidos: 'Partida Contreras',
              nombre: 'Luis Emilio',
              puestos: const [
                "Freelancer",
                "Backend Developer",
                "Frontend Developer"
              ],
            ),
            AboutView(color: Color(0xffffffff)),
            SkillsView(color: Color(0xfff5f8fd)),
            ResumenView(color: Color(0xffffffff)),
            PortafolioView()
          ],
        ),
      ),
    );
  }
}
