import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/views/home/reservation/steps/step/step_view.dart';
import 'package:flutter/material.dart';

List<EquipmentModel> _equipments = [
  EquipmentModel(
      image: "equipment",
      name: "Lunette de protection",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  EquipmentModel(
      image: "equipment",
      name: "Lunette de protection",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  EquipmentModel(
      image: "equipment",
      name: "Lunette de protection",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a"""),
  EquipmentModel(
      image: "equipment",
      name: "Lunette de protection",
      description:
          """Glock signe une nouvelle génération de ces Glock 17 et 19 avec le Gen 5 dérivé du Glock conçu pour le FBI et qui va équiper d'autres administrations aux USA comme le Stade Dept, l'ATF, LE Dept du trésor etc etc. 
Parmi les changements de conception, il y a""")
];

class EquipmentView extends StatelessWidget {
  const EquipmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StepView(
        title: "Choix de l'équipement",
        skipTitle: "continuer sans équipement",
        data: _equipments);
  }
}
