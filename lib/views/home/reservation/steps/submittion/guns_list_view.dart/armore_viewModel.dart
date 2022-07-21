import 'package:egczacademy/services/gun_list_service.dart';
import 'package:egczacademy/services/guns_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/reservation/steps/submittion/filterGun/filter_gun_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../../app/app.locator.dart';
import '../../../../../../models/gunModel/gun_model.dart';
import '../../../../../shared/widget/dialog/setup_dialog_ui.dart';

class ArmoreViewModel extends ReactiveViewModel {
  final GunAPIService _gunAPIService = locator<GunAPIService>();
  final UserService _userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final GunListService _gunListService = locator<GunListService>();

  int? _selectedIndex;
  int? get selectedIndex => _selectedIndex;
  List<GunModel>? get guns => _gunListService.guns;

  bool get loader => _gunListService.loader;

  bool get filterMarqueIsActive => _gunListService.filterMarqueIds.isNotEmpty;
  int get filterMarqueLength => _gunListService.filterMarqueIds.length;

  init() async {
    _gunListService.setBusy(true);
    await _gunAPIService
        .fetchAllGuns(
          token: _userService.token!,
        )
        .then((value) => null);

    await _gunListService.setGunList(_gunAPIService.guns);
    _gunListService.setBusy(false);
  }

  void showDetails(index) async {
    var response = await _dialogService.showCustomDialog(
        mainButtonTitle: "ok",
        variant: DialogType.arm,
        barrierDismissible: true);

    if (response != null) {
      if (response.confirmed) {
        _selectedIndex = index;
        notifyListeners();
      } else {
        print("CANCE:");
      }
    }
  }

  void goToFilterGunView() {
    _navigationService.navigateToView(const FilterGunView());
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_gunListService];
}
