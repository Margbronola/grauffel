import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../dialog/setup_dialog_ui.dart';

class WeaponCardViewModel extends BaseViewModel {
  int? selectedIndex;
  final DialogService _dialogService = locator<DialogService>();

  void showDetails(index) async {
    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        variant: DialogType.arm,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        selectedIndex = index;
        notifyListeners();
      } else {
        debugPrint("CANCE:");
      }
    }
  }
}
