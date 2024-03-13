import 'package:egczacademy/views/shared/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onViewModelReady: (model) async => await model.init(),
      builder: (context, model, child) => const Scaffold(
        body: CustomLoader(),
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
