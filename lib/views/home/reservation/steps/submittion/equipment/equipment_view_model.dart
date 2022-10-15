import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/equipments_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
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

  PageController? pageController = PageController();
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  List<EquipmentModel> get selectedEquipment =>
      _bookingService.getselectedEquipment;

  void init() async {
    setBusy(true);
    await _equipmentsAPIService.fetchAllEquipments(
      token: _userService.token!,
    );
    setBusy(false);
  }

  void increaseQuantity(int index) {
    equipments![index] = equipments![index].copyWith(
        quantity: equipments![index].quantity + 1,
        qty: equipments![index].qty + 1);
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    if (_equipmentsAPIService.equipments![index].quantity > 1) {
      equipments![index] = equipments![index].copyWith(
          quantity: equipments![index].quantity - 1,
          qty: equipments![index].qty - 1);
      notifyListeners();
    }
  }

  void nextIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void nextPage(int index) {
    nextIndex(index);
    pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    notifyListeners();
  }

  void removeEquipment(EquipmentModel equipment) {
    _bookingService.getselectedEquipment.remove(equipment);
    if (_bookingService.getselectedEquipment.isEmpty) {
      nextPage(0);
    }
    notifyListeners();
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
        debugPrint("confirm");
      } else {
        debugPrint("CANCE:");
      }
    }
  }

  bool _isloadDone = false;
  bool get isloadDone => _isloadDone;

  void loadMore() async {
    if (_equipmentsAPIService.pagingModel!.total != equipments!.length) {
      _isloadDone = true;
      notifyListeners();
      await _equipmentsAPIService.fetchAllEquipments(
          token: _userService.token!, fetchMore: true);
      _isloadDone = false;
      notifyListeners();
    }
  }

  void selectCard(EquipmentModel equipment) async {
    if (_bookingService.getselectedEquipment.contains(equipment)) {
      _bookingService.getselectedEquipment.remove(equipment);
    } else {
      _bookingService.getselectedEquipment.add(equipment);
    }
    notifyListeners();
  }
}
