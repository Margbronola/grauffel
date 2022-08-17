import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/services/ammunition_api_service.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/caliber_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../app/app.locator.dart';
import '../../../../shared/widget/dialog/setup_dialog_ui.dart';
import 'filterGun/caliber_filter/caliber_filter_view.dart';
import 'filterGun/brand_filter_view.dart';

class AmmunitionViewModel extends BaseViewModel {
  final AmmunitionAPIService _ammunitionAPIService =
      locator<AmmunitionAPIService>();
  final UserService _userService = locator<UserService>();
  final GunListService _gunListService = locator<GunListService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final DialogService _dialogService = locator<DialogService>();
  final CaliberAPIService _caliberAPIService = locator<CaliberAPIService>();

  bool get filterMarqueIsActive => _gunListService.filterMarqueIds.isNotEmpty;
  int get filterMarqueLength => _gunListService.filterMarqueIds.length;

  bool get filterCaliberIsActive => _gunListService.filterCaliberIds.isNotEmpty;
  int get filterCaliberIsActiveLength =>
      _gunListService.filterCaliberIds.length;

  int? _selectedIndex;
  int? get selectedIndex => _selectedIndex;
  List<AmmunitionsModel>? get ammunitions => _gunListService.ammunition;

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

  void selectCard(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void initFilter() {
    _gunListService.clearAall();
    _brandAPIService.reset();
    notifyListeners();
  }
}
