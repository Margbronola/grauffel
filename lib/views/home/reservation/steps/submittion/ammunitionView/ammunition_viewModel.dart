import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/services/ammunition_api_service.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/caliber_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../../app/app.locator.dart';
import '../../../../../../services/booking_service.dart';
import '../../../../../shared/widget/dialog/setup_dialog_ui.dart';
import '../filterGun/brand_filter_view.dart';
import '../filterGun/caliber_filter/caliber_filter_view.dart';

class AmmunitionViewModel extends BaseViewModel {
  final AmmunitionAPIService _ammunitionAPIService =
      locator<AmmunitionAPIService>();
  final UserService _userService = locator<UserService>();
  final GunListService _gunListService = locator<GunListService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final DialogService _dialogService = locator<DialogService>();
  final CaliberAPIService _caliberAPIService = locator<CaliberAPIService>();
  final BookingService _bookingService = locator<BookingService>();

  bool get filterMarqueIsActive => _gunListService.filterMarqueIds.isNotEmpty;
  int get filterMarqueLength => _gunListService.filterMarqueIds.length;

  bool get filterCaliberIsActive => _gunListService.filterCaliberIds.isNotEmpty;
  int get filterCaliberIsActiveLength =>
      _gunListService.filterCaliberIds.length;

  List<AmmunitionsModel>? get ammunitions => _gunListService.ammunition;
  List<AmmunitionsModel> get selectedAmmunition =>
      _bookingService.getselectedAmmunition;

  bool get haveorderedGuns => _bookingService.getselectedGun.isNotEmpty;

  //paging
  PageController? pageController = PageController();
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  List<AmmunitionsModel> gunAmmunitionRecommended() {
    List<AmmunitionsModel> gunAmmunitionRecommendedList = [];
    for (GunModel gun in _bookingService.getselectedGun) {
      gunAmmunitionRecommendedList.addAll(gun.ammunitions!);
    }
    return gunAmmunitionRecommendedList;
  }

  init() async {
    setBusy(true);
    initFilter();
    await _ammunitionAPIService.fetchAllAmunition(
      token: _userService.token!,
    );

    await _gunListService.setAmmunitionList(_ammunitionAPIService.ammunitions);
    _gunListService.setBusy(false);
    setBusy(false);
  }

  void marqueFilter() {
    _navigationService.navigateToView(const BrandFilterView(
      filterListType: FilterList.ammunition,
    ));
  }

  void caliberFilter() {
    _navigationService.navigateToView(const CaliberFilterView());
  }

  void showDetails(index) async {
    print("HERE");
    print(ammunitions![index].name!);
    print(ammunitions![index].description);
    print(ammunitions![index].image);
    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        data: ammunitions![index],
        variant: DialogType.ammunition,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        print("confirm");
      } else {
        print("CANCE:");
      }
    }
  }

  void selectCard(AmmunitionsModel ammunition) {
    if (_bookingService.getselectedAmmunition.contains(ammunition)) {
      removeAmmunition(ammunition);
    } else {
      _bookingService.getselectedAmmunition.add(ammunition);
    }
    notifyListeners();
  }

  void initFilter() {
    _gunListService.clearAall();
    _brandAPIService.reset();
    notifyListeners();
  }

  void nextPage(int index) {
    nextIndex(index);
    pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    notifyListeners();
  }

  void nextIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void increaseBox(int index) {
    _bookingService.getselectedAmmunition[index] =
        _bookingService.getselectedAmmunition[index].copyWith(
            perBox: _bookingService.getselectedAmmunition[index].perBox + 1);
    notifyListeners();
  }

  void decreaseBox(int index) {
    if (_bookingService.getselectedAmmunition[index].perBox > 1) {
      _bookingService.getselectedAmmunition[index] =
          _bookingService.getselectedAmmunition[index].copyWith(
              perBox: _bookingService.getselectedAmmunition[index].perBox - 1);
    }
    notifyListeners();
  }

  void removeAmmunition(AmmunitionsModel ammunition) {
    _bookingService.getselectedAmmunition.remove(ammunition);
    if (_bookingService.getselectedAmmunition.isEmpty) {
      nextPage(0);
    }
    notifyListeners();
  }

  void suivant(Function onTap) {
    print("suivant");
    print(_bookingService.getselectedAmmunition.length);
    if (_bookingService.getselectedAmmunition.isNotEmpty) {
      nextPage(1);
    } else {
      onTap();
    }
    notifyListeners();
  }
}
