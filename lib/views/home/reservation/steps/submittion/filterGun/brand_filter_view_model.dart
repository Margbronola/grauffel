import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:egczacademy/services/ammunition_api_service.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../../../app/app.locator.dart';
import '../../../../../../app/components/enum.dart';
import '../../../../../../services/booking_service.dart';

class BrandFilterViewModel extends ReactiveViewModel {
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final UserService _userService = locator<UserService>();
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final AmmunitionAPIService _ammunitionAPIService =
      locator<AmmunitionAPIService>();
  final GunListService _gunListService = locator<GunListService>();

  final BookingService _bookingService = locator<BookingService>();

  late ScrollController controller;
  bool isLoadMoreRunning = false;

  int countCheck = 0;

  bool get hasNextPage => _brandAPIService.pagingModel != null
      ? _brandAPIService.pagingModel!.next_page_url != null
          ? true
          : false
      : false;

  List<BrandModel>? get marque => _brandAPIService.brands;
  List copyFilterMarqueIds = [];

  bool _isGunsList = true;

  void init({required FilterList filterList, required bool isGUn}) async {
    setBusy(true);
    _isGunsList = isGUn;
    if (_brandAPIService.brands == null) {
      debugPrint("fetching");
      await _brandAPIService.fetch(
          token: _userService.token!,
          typeId: filterList == FilterList.gun ? 2 : 1);
    }

    if (_gunListService.filterMarqueIds!.isNotEmpty) {
      copyFilterMarqueIds = _gunListService.filterMarqueIds!.toList();
    }
    controller = ScrollController()
      ..addListener(() async {
        await loadMore(filterList);

        notifyListeners();
      });
    setBusy(false);
  }

  void cancelFilter() {
    _gunListService.clearFilter(filterType: Filter.marque);
    countCheck++;
    notifyListeners();
  }

  Future<void> filterGun() async {
    await _gunAPIService.fetchAllGuns(
        booked: _bookingService.getselectedBookable!,
        date: _bookingService.getselectedDate.toString(),
        time: _bookingService.getselectedTimes,
        token: _userService.token!,
        brandIds: _gunListService.filterMarqueIds,
        caliberIds: _gunListService.filterCaliberIds);
    _gunListService.setGunList(_gunAPIService.guns);
    notifyListeners();
    print("dispose guns");
  }

  Future<void> filterAmmunition() async {
    await _ammunitionAPIService.fetchAllAmunition(
        token: _userService.token!,
        brandIds: _gunListService.filterMarqueIds,
        caliberIds: _gunListService.filterCaliberIds);
    _gunListService.setAmmunitionList(_ammunitionAPIService.ammunitions);
    notifyListeners();
    print("dispose calibers");
  }

  Future check(bool? isCheck, index) async {
    countCheck++;
    if (isCheck!) {
      if (marque!.isNotEmpty) {
        _gunListService.addFilter(marque![index].id!,
            filterType: Filter.marque);
      }
    } else {
      if (marque!.isNotEmpty) {
        _gunListService.removeFilter(marque![index].id!,
            filterType: Filter.marque);
      }
    }
    notifyListeners();
  }

  bool checked(int index) {
    return _gunListService.filterMarqueIds!.contains(marque![index].id);
  }

  Future<bool> loadMore(FilterList filterList) async {
    if (isLoadMoreRunning == false) {
      if (controller.position.extentAfter < 300) {
        isLoadMoreRunning = true;
        await _brandAPIService.loadMore(
            token: _userService.token!,
            typeId: filterList == FilterList.gun ? 2 : 1);
        isLoadMoreRunning = false;
        notifyListeners();
      }
    }
    return true;
  }

  @override
  void dispose() async {
    print("$countCheck");
    if (countCheck != 0) {
      _gunListService.setBusy(true);
      if (_isGunsList) {
        await filterGun();
      } else {
        await filterAmmunition();
      }
      _gunListService.setBusy(false);
    }
    super.dispose();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_gunListService];
}
