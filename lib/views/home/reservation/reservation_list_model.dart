import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/reservation/steps/reserve_steps_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class ReservationListModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();

  final BookingService _bookingService = locator<BookingService>();
  final UserService _userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  List<ActivityModel> get bookables => _bookingAPIService.bookable!;

  String firstCard = "Fun Shoot";
  String secondCard = "Tir Précision";

  Future init() async {
    if (_bookingAPIService.bookable!.isEmpty) {
      setBusy(true);
    }
    await _bookingAPIService.fetch(token: _userService.token!);
    await _bookingAPIService.fetchBookable(token: _userService.token!);

    notifyListeners();
    setBusy(false);
  }

  void showExistDialog() {
    _dialogService.showDialog(description: "Vous avez déjà réservé ce cours.");
  }

  Future<int> checkExistBooking(int courseId) async {
    return await _bookingAPIService.isBookingExist(
        token: _userService.token!, courseId: courseId);
  }

  Future cardSelected(int index) async {
    setBusy(true);
    int isExist = await checkExistBooking(bookables[index].id!);
    debugPrint("Card Reserve click");
    print(isExist);
    if (isExist == 1) {
      showExistDialog();
    } else {
      debugPrint("click");
      navigateToReservation(bookable: bookables[index]);
    }
    setBusy(false);
  }

  void navigateToReservation({required ActivityModel bookable}) async {
    _bookingService.setSelectedBookable = bookable;
    if (_bookingService.getselectedBookable != null) {
      _navigationService.navigateToView(const ReserveStepsView());
    } else {
      _dialogService.showDialog(
          description: "No TirPrecision or Fun Shoot Found from BO");
    }
  }

  // void navigateToReservationCell() {
  //   _navigationService.navigateToView(const ReservationCellView());
  // }
}
