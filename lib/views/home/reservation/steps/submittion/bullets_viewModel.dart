import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/services/ammunition_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';

import '../../../../../app/app.locator.dart';

class BulletsViewModel extends BaseViewModel {
  final AmmunitionAPIService _ammunitionAPIService =
      locator<AmmunitionAPIService>();
  final UserService _userService = locator<UserService>();
  int? selectedIndex;
  init() async {
    setBusy(true);
    await _ammunitionAPIService.fetchAllAmunition(
      token: _userService.token!,
    );
    setBusy(false);
  }

  List<AmmunitionsModel>? get bullets => _ammunitionAPIService.ammunitions;
  void showDetails(index) async {
    // var response = await _dialogService.showCustomDialog(
    //     mainButtonTitle: "ok",
    //     variant: DialogType.arm,
    //     barrierDismissible: true);

    // if (response != null) {
    //   if (response.confirmed) {
    //     selectedIndex = index;
    //     notifyListeners();
    //   } else {
    //     print("CANCE:");
    //   }
    // }
  }
}
