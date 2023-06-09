// ignore_for_file: unused_field

import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/services/ammunition_api_service.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/filterGun/brand_filter_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../../app/app.locator.dart';
import '../../../../../../models/gunModel/gun_model.dart';
import '../../../../../../services/booking_service.dart';
import '../../../../../shared/widget/dialog/setup_dialog_ui.dart';
import '../filterGun/caliber_filter/caliber_filter_view.dart';

class ArmoreViewModel extends ReactiveViewModel {
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final AmmunitionAPIService _ammunitionAPIService =
      locator<AmmunitionAPIService>();
  final UserService _userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final GunListService _gunListService = locator<GunListService>();
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final BookingService _bookingService = locator<BookingService>();

  List<GunModel>? get guns => _gunListService.guns;
  bool get loader => _gunListService.loader;
  bool get filterMarqueIsActive => _gunListService.filterMarqueIds!.isNotEmpty;
  int get filterMarqueLength => _gunListService.filterMarqueIds!.length;
  bool get filterCaliberIsActive =>
      _gunListService.filterCaliberIds!.isNotEmpty;
  int get filterCaliberIsActiveLength =>
      _gunListService.filterCaliberIds!.length;

  List<GunModel> get selectedGun => _bookingService.getselectedGun;

  init() async {
    setBusy(true);
    initFilter();
    await _gunAPIService
        .fetchAllGuns(
          booked: _bookingService.getselectedBookable!,
          date: _bookingService.getselectedDate.toString(),
          time: _bookingService.getselectedTimes,
          token: _userService.token!,
        )
        .then((value) => null);

    await _gunListService.setGunList(_gunAPIService.guns);
    setBusy(false);
  }

  bool _isloadDone = false;
  bool get isloadDone => _isloadDone;

  void loadMore(bool isGunsList) async {
    if (_gunAPIService.pagingModel!.total != guns!.length) {
      _isloadDone = true;

      await _gunAPIService.fetchAllGuns(
          booked: _bookingService.getselectedBookable!,
          time: _bookingService.getselectedTimes,
          date: _bookingService.getselectedDate.toString(),
          token: _userService.token!,
          fetchMore: true);
      _isloadDone = false;
      notifyListeners();
    }
  }

  void showDetails(index) async {
    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        data: guns![index],
        variant: DialogType.arm,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        debugPrint("confirm");
      } else {
        debugPrint("cancel");
      }
    }
  }

  void selectCard(GunModel selectedGun) {
    if (_bookingService.getselectedGun.contains(selectedGun)) {
      _bookingService.getselectedGun.remove(selectedGun);
    } else if (_bookingService.getselectedGun.contains(selectedGun)) {
      if (selectedGun.reservable == false) {
        _bookingService.getselectedGun.remove(selectedGun);
      }
    } else {
      _bookingService.getselectedGun.add(selectedGun);
    }
    notifyListeners();
  }

  void marqueFilter() {
    _navigationService.navigateToView(const BrandFilterView(
      filterListType: FilterList.gun,
      isGUn: true,
    ));
  }

  void caliberFilter() {
    _navigationService.navigateToView(const CaliberFilterView(
      isGun: true,
    ));
  }

  void initFilter() {
    _gunListService.clearAall();
    _brandAPIService.reset();
    notifyListeners();
  }

  @override
  void dispose() {
    initFilter();
    super.dispose();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_gunListService];
}
