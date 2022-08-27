import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/services/brand_api_service.dart';
import 'package:egczacademy/services/caliber_api_service.dart';
import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/filterGun/brand_filter_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../../app/app.locator.dart';
import '../../../../../../models/gunModel/gun_model.dart';
import '../../../../../../services/booking_service.dart';
import '../../../../../shared/widget/dialog/setup_dialog_ui.dart';
import '../filterGun/caliber_filter/caliber_filter_view.dart';

class ArmoreViewModel extends ReactiveViewModel {
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final UserService _userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final GunListService _gunListService = locator<GunListService>();
  final BrandAPIService _brandAPIService = locator<BrandAPIService>();
  final CaliberAPIService _caliberAPIService = locator<CaliberAPIService>();
  final BookingService _bookingService = locator<BookingService>();

  List<GunModel>? get guns => _gunListService.guns;

  bool get loader => _gunListService.loader;
  bool get filterMarqueIsActive => _gunListService.filterMarqueIds.isNotEmpty;
  int get filterMarqueLength => _gunListService.filterMarqueIds.length;
  bool get filterCaliberIsActive => _gunListService.filterCaliberIds.isNotEmpty;
  int get filterCaliberIsActiveLength =>
      _gunListService.filterCaliberIds.length;

  List<GunModel> get selectedGun => _bookingService.getselectedGun;

  init() async {
    print(_bookingService.getselectedTimes.length);
    _gunListService.setBusy(true);
    initFilter();
    await _gunAPIService
        .fetchAllGuns(
          token: _userService.token!,
        )
        .then((value) => null);

    await _gunListService.setGunList(_gunAPIService.guns);
    _gunListService.setBusy(false);
  }

  void showDetails(index) async {
    print(guns![index]);
    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        data: guns![index],
        variant: DialogType.arm,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        print("confirm");
      } else {
        print("cancel");
      }
    }
  }

  void selectCard(GunModel selectedGun) {
    if (_bookingService.getselectedGun.contains(selectedGun)) {
      _bookingService.getselectedGun.remove(selectedGun);
    } else {
      _bookingService.getselectedGun.add(selectedGun);
    }
    notifyListeners();
  }

  void marqueFilter() {
    _navigationService.navigateToView(const BrandFilterView(
      filterListType: FilterList.gun,
    ));
  }

  void caliberFilter() {
    _navigationService.navigateToView(const CaliberFilterView());
  }

  void initFilter() {
    _gunListService.clearAall();
    _brandAPIService.reset();
    notifyListeners();
  }

  @override
  void dispose() {
    initFilter();
    super.dispose();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_gunListService];
}
