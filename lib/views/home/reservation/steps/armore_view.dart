import 'package:egczacademy/views/home/reservation/steps/step/step_view.dart';
import 'package:flutter/material.dart';

class ArmoreView extends StatelessWidget {
  const ArmoreView({Key? key}) : super(key: key);
  //TODO api
  @override
  Widget build(BuildContext context) {
    return StepView(
        title: "Choix de l'arme", skipTitle: "Continuer sans arme", data: []);
  }
}
