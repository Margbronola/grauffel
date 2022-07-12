import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../../app/app.locator.dart';
import '../../../../../../models/gunModel/gun_model.dart';
import '../../../../../shared/widget/dialog/setup_dialog_ui.dart';

class ArmoreViewModel extends BaseViewModel {
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final UserService _userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  int? selectedIndex;

  init() async {
    setBusy(true);
    await _gunAPIService.fetchAllGuns(
      token: _userService.token!,
    );
    setBusy(false);
  }

  List<GunModel>? get guns => _gunAPIService.guns;
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
        print("CANCE:");
      }
    }
  }
}
