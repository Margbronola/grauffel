import 'package:egczacademy/models/bookable_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/reservation/steps/reserveSteps_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import 'reservation_cell/reservation_cell_view.dart';

class ReservationListModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final BookingService _bookingService = locator<BookingService>();
  final UserService _userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();

  List<BookableModel> get bookables => _bookingAPIService.bookable!;

  String firstCard = "Fun Shoot";
  String secondCard = "Tir Précision";

  Future init() async {
    await _bookingAPIService.fetchBookable(token: _userService.token!);

    setBusy(false);
  }

  void navigateToReservation({required BookableModel bookable}) {
    _bookingService.setSelectedBookable = bookable;
    if (_bookingService.getselectedBookable != null) {
      print("BOOKABLE");
      print(bookable);
      _navigationService.navigateToView(const ReserveStepsView());
    } else {
      _dialogService.showDialog(
          description: "No TirPrecision or Fun Shoot Found from BO");
    }
  }

  void navigateToReservationCell() {
    _navigationService.navigateToView(const ReservationCellView());
  }
}
