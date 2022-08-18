import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/equipments_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../../app/app.locator.dart';
import '../../../../../shared/widget/dialog/setup_dialog_ui.dart';

class EquipmentViewModel extends BaseViewModel {
  final EquipmentsAPIService _equipmentsAPIService =
      locator<EquipmentsAPIService>();
  final DialogService _dialogService = locator<DialogService>();
  final UserService _userService = locator<UserService>();
  final BookingService _bookingService = locator<BookingService>();

  List<EquipmentModel> get selectedEquipment =>
      _bookingService.getselectedEquipment;

  void init() async {
    print(_userService.token);
    setBusy(true);
    await _equipmentsAPIService.fetchAllEquipments(
      token: _userService.token!,
    );
    setBusy(false);
  }

  List<EquipmentModel>? get equipments => _equipmentsAPIService.equipments;

  void showDetails(index) async {
    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        data: equipments![index],
        variant: DialogType.equipments,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        print("confirm");
      } else {
        print("CANCE:");
      }
    }
  }

  void selectCard(EquipmentModel equipment) {
    if (_bookingService.getselectedEquipment.contains(equipment)) {
      _bookingService.getselectedEquipment.remove(equipment);
    } else {
      _bookingService.getselectedEquipment.add(equipment);
    }
    notifyListeners();
  }
}
