import 'package:egczacademy/views/home/reservation/steps/reserveSteps_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class ReservationListModel extends BaseViewModel {
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();
  // void showCard() async {
  //   var response = await _dialogService.showCustomDialog(
  //       mainButtonTitle: "ok",
  //       variant: DialogType.basic,
  //       barrierDismissible: true);

  //   if (response != null) {
  //     if (response.confirmed) {
  //       _navigationService.navigateToView(ReserveStepsView());
  //     } else {
  //       print("CANCE:");
  //     }
  //   }
  // }
  void navigateToReservation() {
    _navigationService.navigateToView(const ReserveStepsView());
  }
}
