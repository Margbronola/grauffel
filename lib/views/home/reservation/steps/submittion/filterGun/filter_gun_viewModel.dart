import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../../app/app.locator.dart';

class FilterGunViewModel extends ReactiveViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final UserService _userService = locator<UserService>();
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final GunListService _gunListService = locator<GunListService>();

  bool get isEndOfList =>
      _marque!.length == _brandAPIService.pagingModel!.total;

  List<BrandModel>? _marque;
  List<BrandModel>? get marque => _marque;

  void init() async {
    setBusy(true);
    await fetchBrand();
    setBusy(false);
  }

  void cancelFilter() {
    _gunListService.clearFilter();
    notifyListeners();
  }

  Future<void> filterGun() async {
    await _gunAPIService.fetchAllGuns(
        token: _userService.token!, brand: _gunListService.filterMarqueIds);
    _gunListService.setGunList(_gunAPIService.guns);
  }

  Future check(bool? isCheck, index) async {
    if (isCheck!) {
      if (_marque!.isNotEmpty) {
        _gunListService.addFilter(_marque![index].id!);
      }
    } else {
      if (_marque!.isNotEmpty) {
        _gunListService.removeFilter(_marque![index].id!);
      }
    }
    notifyListeners();
  }

  bool checked(int index) {
    return _gunListService.filterMarqueIds.contains(_marque![index].id);
  }

  Future<bool> fetchBrand() async {
    _marque = _brandAPIService.brands;
    return _marque != null;
  }

  @override
  void dispose() async {
    _gunListService.setBusy(true);
    await filterGun();
    _gunListService.setBusy(false);
    super.dispose();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_gunListService];
}
