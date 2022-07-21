import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../../app/app.locator.dart';
import 'package:collection/collection.dart';

import '../../../../../../app/components/filter_enum.dart';

class FilterGunViewModel extends ReactiveViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final UserService _userService = locator<UserService>();
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final GunListService _gunListService = locator<GunListService>();

  bool get isEndOfList =>
      _brandAPIService.brands!.length == _brandAPIService.pagingModel!.total;

  List<BrandModel>? get marque => _brandAPIService.brands;
  List copyFilterMarqueIds = [];

  void init() async {
    setBusy(true);
    if (_brandAPIService.brands == null) {
      print("fetching");
      await fetchBrand();
    }

    if (_gunListService.filterMarqueIds.isNotEmpty) {
      copyFilterMarqueIds = _gunListService.filterMarqueIds.toList();
    }

    setBusy(false);
  }

  void cancelFilter() {
    _gunListService.clearFilter(filterType: Filter.marque);
    notifyListeners();
  }

  Future<void> filterGun() async {
    await _gunAPIService.fetchAllGuns(
        token: _userService.token!, brandIds: _gunListService.filterMarqueIds);
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

  Future<bool> fetchBrand() async {
    await _brandAPIService.fetchBrand(token: _userService.token!);
    notifyListeners();
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
