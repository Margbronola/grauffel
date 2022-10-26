import 'package:egczacademy/models/gunModel/caliber_model.dart';
import 'package:egczacademy/services/ammunition_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/caliber_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../../../../app/app.locator.dart';
import '../../../../../../../app/components/enum.dart';

class CaliberFilterViewModel extends ReactiveViewModel {
  final CaliberAPIService _caliberAPIService = locator<CaliberAPIService>();
  final UserService _userService = locator<UserService>();
  final GunListService _gunListService = locator<GunListService>();
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final BookingService _bookingService = locator<BookingService>();
  final AmmunitionAPIService _ammunitionAPIService =
      locator<AmmunitionAPIService>();

  List<CaliberModel>? get calibers => _caliberAPIService.caliber;
  List copyFilterCaliberIds = [];
  late ScrollController controller;
  int countCheck = 0;

  bool isLoadMoreRunning = false;
  bool get hasNextPage => _caliberAPIService.pagingModel != null
      ? _caliberAPIService.pagingModel!.next_page_url != null
          ? true
          : false
      : false;

  bool _isGunsList = true;

  void init({required bool isGUn}) async {
    setBusy(true);
    _isGunsList = isGUn;

    if (_caliberAPIService.caliber == null) {
      debugPrint("fetching");
      await fetchCalibers();
    }

    if (_gunListService.filterMarqueIds!.isNotEmpty) {
      copyFilterCaliberIds = _gunListService.filterCaliberIds!.toList();
    }

    controller = ScrollController()
      ..addListener(() async {
        await loadMore();
      });

    setBusy(false);
  }

  Future<bool> loadMore() async {
    if (isLoadMoreRunning == false) {
      if (controller.position.extentAfter < 300) {
        isLoadMoreRunning = true;
        notifyListeners();
        await _caliberAPIService.loadMore(
          token: _userService.token!,
        );
        isLoadMoreRunning = false;
        notifyListeners();
      }
    }

    return true;
  }

  void cancelFilter() {
    _gunListService.clearFilter(filterType: Filter.calibre);
    countCheck++;
    notifyListeners();
  }

  Future<bool> fetchCalibers() async {
    await _caliberAPIService.fetchCaliber(token: _userService.token!);
    notifyListeners();
    return true;
  }

  bool checked(int index) {
    return _gunListService.filterCaliberIds!.contains(calibers![index].id);
  }

  Future check(bool? isCheck, index) async {
    countCheck++;
    if (isCheck!) {
      if (calibers!.isNotEmpty) {
        _gunListService.addFilter(calibers![index].id!,
            filterType: Filter.calibre);
      }
    } else {
      if (calibers!.isNotEmpty) {
        _gunListService.removeFilter(calibers![index].id!,
            filterType: Filter.calibre);
      }
    }
    print("check");
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
    print("dispose caliber");
  }

  Future<void> filterAmmunition() async {
    await _ammunitionAPIService.fetchAllAmunition(
        token: _userService.token!,
        brandIds: _gunListService.filterMarqueIds,
        caliberIds: _gunListService.filterCaliberIds);
    _gunListService.setAmmunitionList(_ammunitionAPIService.ammunitions!);
    notifyListeners();
    print("dispose caliber");
  }

  @override
  void dispose() async {
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
