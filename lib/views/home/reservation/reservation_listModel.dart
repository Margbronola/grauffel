import 'package:egczacademy/models/bookable_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/reservation/steps/reserveSteps_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class ReservationListModel extends BaseViewModel {
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final BookingService _bookingService = locator<BookingService>();
  final UserService _userService = locator<UserService>();

  List<BookableModel> get bookables => _bookingAPIService.bookable!;

  Future init() async {
    setBusy(true);
    await fetchBookinngs();
    setBusy(false);
  }

  void navigateToReservation({required BookableModel bookable}) {
    _bookingService.setSelectedBookable = bookable;
    _navigationService.navigateToView(const ReserveStepsView());
  }

  Future<void> fetchBookinngs() async {
    await _bookingAPIService.fetchBookable(token: _userService.token!);
  }
}
