import 'package:egczacademy/models/bullet_model.dart';
import 'package:flutter/material.dart';

import 'step/step_view.dart';

List<BulletModel> _bullets = [
  BulletModel(
      image: "bullet",
      name: "9x19 - 9mm",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  BulletModel(
      image: "bullet",
      name: "9x19 - 9mm",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  BulletModel(
      image: "bullet",
      name: "9x19 - 9mm",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  BulletModel(
      image: "bullet",
      name: "9x19 - 9mm",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a""")
];

class BulletsView extends StatelessWidget {
  const BulletsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StepView(
        title: "Choix des munitions",
        skipTitle: "continuer sans munitions",
        data: _bullets);
  }
}
