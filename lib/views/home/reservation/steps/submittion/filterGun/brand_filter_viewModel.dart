import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../../../app/app.locator.dart';
import 'package:collection/collection.dart';
import '../../../../../../app/components/enum.dart';

class BrandFilterViewModel extends ReactiveViewModel {
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final UserService _userService = locator<UserService>();
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final GunListService _gunListService = locator<GunListService>();

  late ScrollController controller;
  bool isLoadMoreRunning = false;

  bool get hasNextPage => _brandAPIService.pagingModel != null
      ? _brandAPIService.pagingModel!.next_page_url != null
          ? true
          : false
      : false;

  List<BrandModel>? get marque => _brandAPIService.brands;
  List copyFilterMarqueIds = [];

  void init({required FilterList filterList}) async {
    setBusy(true);
    if (_brandAPIService.brands == null) {
      print("fetching");
      await _brandAPIService.fetch(
          token: _userService.token!,
          typeId: filterList == FilterList.gun ? 2 : 1);
    }

    if (_gunListService.filterMarqueIds.isNotEmpty) {
      copyFilterMarqueIds = _gunListService.filterMarqueIds.toList();
    }
    controller = ScrollController()
      ..addListener(() async {
        await loadMore(filterList);

        notifyListeners();
      });
    setBusy(false);
  }

  void uncheckAllBox() {
    _gunListService.clearFilter(filterType: Filter.marque);
    notifyListeners();
  }

  Future<void> filterGun() async {
    await _gunAPIService.fetchAllGuns(
        token: _userService.token!,
        brandIds: _gunListService.filterMarqueIds,
        caliberIds: _gunListService.filterCaliberIds);
    _gunListService.setGunList(_gunAPIService.guns);
  }

  Future check(bool? isCheck, index) async {
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
    return _gunListService.filterMarqueIds.contains(marque![index].id);
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
    Function eq = const ListEquality().equals;

    if (!eq(copyFilterMarqueIds, _gunListService.filterMarqueIds)) {
      print("pass");
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
