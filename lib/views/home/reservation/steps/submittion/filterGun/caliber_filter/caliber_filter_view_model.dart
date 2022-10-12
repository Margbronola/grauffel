import 'package:egczacademy/models/gunModel/caliber_model.dart';
import 'package:egczacademy/services/caliber_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:collection/collection.dart';
import '../../../../../../../app/app.locator.dart';
import '../../../../../../../app/components/enum.dart';

class CaliberFilterViewModel extends ReactiveViewModel {
  final CaliberAPIService _caliberAPIService = locator<CaliberAPIService>();
  final UserService _userService = locator<UserService>();
  final GunListService _gunListService = locator<GunListService>();
  final GunAPIService _gunAPIService = locator<GunAPIService>();

  List<CaliberModel>? get calibers => _caliberAPIService.caliber;
  List copyFilterCaliberIds = [];

  late ScrollController controller;

  bool isLoadMoreRunning = false;

  bool get hasNextPage => _caliberAPIService.pagingModel != null
      ? _caliberAPIService.pagingModel!.next_page_url != null
          ? true
          : false
      : false;

  void init() async {
    setBusy(true);
    if (_caliberAPIService.caliber == null) {
      debugPrint("fetching");
      await fetchCalibers();
    }

    if (_gunListService.filterMarqueIds.isNotEmpty) {
      copyFilterCaliberIds = _gunListService.filterCaliberIds.toList();
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
    notifyListeners();
  }

  Future<bool> fetchCalibers() async {
    await _caliberAPIService.fetchCaliber(token: _userService.token!);
    notifyListeners();
    return true;
  }

  bool checked(int index) {
    return _gunListService.filterCaliberIds.contains(calibers![index].id);
  }

  Future check(bool? isCheck, index) async {
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
    notifyListeners();
  }

  Future<void> filterGun() async {
    await _gunAPIService.fetchAllGuns(
        token: _userService.token!,
        brandIds: _gunListService.filterMarqueIds,
        caliberIds: _gunListService.filterCaliberIds);
    _gunListService.setGunList(_gunAPIService.guns);
  }

  @override
  void dispose() async {
    Function eq = const ListEquality().equals;

    if (!eq(copyFilterCaliberIds, _gunListService.filterCaliberIds)) {
      debugPrint("pass");
      _gunListService.setBusy(true);
      await filterGun();
      _gunListService.setBusy(false);
    }
    super.dispose();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_gunListService];
}
