import 'package:egczacademy/views/home/reservation/steps/step/step_view.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:egczacademy/views/shared/widget/guns/weaponCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/gun_model.dart';

List<GunModel> _guns = [
  GunModel(
      image: "gun",
      name: "Glock 19 Gen 5",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  GunModel(
      image: "gun",
      name: "Glock 19 Gen 5",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  GunModel(
      image: "gun",
      name: "Glock 19 Gen 5",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  GunModel(
      image: "gun",
      name: "Glock 19 Gen 5",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a""")
];

class ArmoreView extends StatelessWidget {
  const ArmoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StepView(
        title: "Choix de l'arme",
        skipTitle: "Continuer sans arme",
        data: _guns);
  }
}
