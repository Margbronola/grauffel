import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/services/ammunition_api_service.dart';
import 'package:egczacademy/services/brand_api_service.dart';
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

class AmmunitionViewModel extends ReactiveViewModel {
  final AmmunitionAPIService _ammunitionAPIService =
      locator<AmmunitionAPIService>();
  final UserService _userService = locator<UserService>();
  final GunListService _gunListService = locator<GunListService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final DialogService _dialogService = locator<DialogService>();
  final BookingService _bookingService = locator<BookingService>();

  bool get filterMarqueIsActive => _gunListService.filterMarqueIds!.isNotEmpty;
  int get filterMarqueLength => _gunListService.filterMarqueIds!.length;

  bool get filterCaliberIsActive =>
      _gunListService.filterCaliberIds!.isNotEmpty;
  int get filterCaliberIsActiveLength =>
      _gunListService.filterCaliberIds!.length;

  List<AmmunitionsModel>? get ammunitions => _gunListService.ammunition!;
  List<AmmunitionsModel> get selectedAmmunition =>
      _bookingService.getselectedAmmunition;

  List<GunModel> selectedGun = [];
  bool requiredAmmo = false;

  bool get haveorderedGuns => _bookingService.getselectedGun.isNotEmpty;
  bool get loader => _gunListService.loader;
  //paging
  PageController? pageController = PageController();
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  List<AmmunitionsModel> gunAmmunitionRecommendedList = [];

  gunAmmunitionRecommended() async {
    for (GunModel gun in _bookingService.getselectedGun) {
      gunAmmunitionRecommendedList.addAll(gun.ammunitions!);
    }
    gunAmmunitionRecommendedList =
        gunAmmunitionRecommendedList.toSet().toList();
  }

  selectedGunss() {
    selectedGun.addAll(_bookingService.getselectedGun);
  }

  getRequired() {
    Iterable<GunModel> required =
        selectedGun.where((element) => element.required_ammunition == 1);

    print("GET REQUIRED: ${required.length}");
    print("GET REQUIRED: $required");

    if (required.isNotEmpty) {
      requiredAmmo = true;
    } else {
      requiredAmmo = false;
    }
  }

  init() async {
    setBusy(true);
    initFilter();
    await selectedGunss();
    await _ammunitionAPIService.fetchAllAmunition(
      token: _userService.token!,
    );
    await gunAmmunitionRecommended();
    await getRequired();
    await _gunListService.setAmmunitionList(_ammunitionAPIService.ammunitions!);
    List<int?> gunAmmunitionRecommendedListId =
        gunAmmunitionRecommendedList.map((e) => e.id).toList();

    ammunitions!.removeWhere(
        (element) => gunAmmunitionRecommendedListId.contains(element.id));

    _gunListService.setBusy(false);
    setBusy(false);
  }

  bool _isloadDone = false;
  bool get isloadDone => _isloadDone;

  void loadMore() async {
    if (_ammunitionAPIService.pagingModel!.total != ammunitions!.length) {
      _isloadDone = true;
      notifyListeners();
      await _ammunitionAPIService.fetchAllAmunition(
          token: _userService.token!, fetchMore: true);
      _isloadDone = false;
      notifyListeners();
    }
  }

  void marqueFilter() {
    _navigationService.navigateToView(const BrandFilterView(
      filterListType: FilterList.ammunition,
      isGUn: false,
    ));
  }

  void caliberFilter() {
    _navigationService.navigateToView(const CaliberFilterView(
      isGun: false,
    ));
  }

  void showDetails(index) async {
    debugPrint("HERE");
    debugPrint(ammunitions![index].name!);
    debugPrint(ammunitions![index].description);
    debugPrint(ammunitions![index].image_url);

    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        data: ammunitions![index],
        variant: DialogType.ammunition,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        debugPrint("confirm");
      } else {
        debugPrint("CANCEL:");
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
    if (_bookingService.getselectedAmmunition[index].quantity <
        _bookingService.getselectedAmmunition[index].stock!) {
      _bookingService.getselectedAmmunition[index] =
          _bookingService.getselectedAmmunition[index].copyWith(
              quantity:
                  _bookingService.getselectedAmmunition[index].quantity + 1,
              qty: _bookingService.getselectedAmmunition[index].qty + 1);
    }

    notifyListeners();
  }

  void decreaseBox(int index) {
    if (_bookingService.getselectedAmmunition[index].quantity > 1) {
      _bookingService.getselectedAmmunition[index] =
          _bookingService.getselectedAmmunition[index].copyWith(
              quantity:
                  _bookingService.getselectedAmmunition[index].quantity - 1,
              qty: _bookingService.getselectedAmmunition[index].qty - 1);
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

  void suivant(Function onTap, Function skipTap) {
    if (_bookingService.getselectedAmmunition.isNotEmpty) {
      if (selectedIndex == 0) {
        debugPrint("its zero");
        nextPage(1);
      } else {
        debugPrint("not zero");
        // onTap();
        skipTap();
      }
    }
  }

  @override
  notifyListeners();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_gunListService];
}
