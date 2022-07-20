import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'filter_gun_viewModel.dart';

class FilterGunView extends StatelessWidget {
  const FilterGunView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FilterGunViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "marque".toUpperCase(),
            style: const TextStyle(color: backgroundColor),
          ),
          centerTitle: false,
          backgroundColor: kcWhite,
          iconTheme: const IconThemeData(color: backgroundColor),
          actions: [
            TextButton(
              onPressed: model.cancelFilter,
              child: Text(
                "Annuler\nfiltres".toUpperCase(),
                style: const TextStyle(color: buttonColor),
              ),
            ),
            horizontalSpaceSmall()
          ],
        ),
        body: Container(
            color: kcWhite,
            child: ListView.builder(
              itemCount: model.marque.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(model.marque[index].toUpperCase()),
                trailing: Checkbox(
                  value: true,
                  onChanged: (x) {},
                  activeColor: buttonColor,
                ),
              ),
            )),
      ),
      viewModelBuilder: () => FilterGunViewModel(),
    );
  }
}
