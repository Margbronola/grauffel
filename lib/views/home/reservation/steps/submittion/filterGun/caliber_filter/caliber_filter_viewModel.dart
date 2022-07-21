import 'package:egczacademy/models/gunModel/caliber_model.dart';
import 'package:egczacademy/services/caliber_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:collection/collection.dart';
import '../../../../../../../app/app.locator.dart';
import '../../../../../../../app/components/filter_enum.dart';

class CaliberFilterViewModel extends ReactiveViewModel {
  final CaliberAPIService _caliberAPIService = locator<CaliberAPIService>();
  final UserService _userService = locator<UserService>();
  final GunListService _gunListService = locator<GunListService>();
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  bool get isEndOfList =>
      _caliberAPIService.caliber!.length ==
      _caliberAPIService.pagingModel!.total;

  List<CaliberModel>? get calibers => _caliberAPIService.caliber;
  List copyFilterCaliberIds = [];

  void init() async {
    setBusy(true);
    if (_caliberAPIService.caliber == null) {
      print("fetching");
      await fetchCalibers();
    }

    if (_gunListService.filterMarqueIds.isNotEmpty) {
      copyFilterCaliberIds = _gunListService.filterMarqueIds.toList();
    }

    setBusy(false);
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
        caliberIds: _gunListService.filterCaliberIds);
    _gunListService.setGunList(_gunAPIService.guns);
  }

  @override
  void dispose() async {
    Function eq = const ListEquality().equals;

    if (!eq(copyFilterCaliberIds, _gunListService.filterCaliberIds)) {
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
