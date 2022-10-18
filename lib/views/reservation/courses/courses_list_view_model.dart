import 'package:egczacademy/models/activity_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/booking_api_service.dart';
import '../../../services/booking_service.dart';
import '../../../services/user_service.dart';
import '../../home/reservation/steps/reserve_steps_view.dart';

class CoursesListViewModel extends BaseViewModel {
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final UserService _userService = locator<UserService>();
  final DialogService _dialogService = locator<DialogService>();
  final BookingService _bookingService = locator<BookingService>();
  final NavigationService _navigationService = locator<NavigationService>();

  List<ActivityModel> get bookableCourse => _bookingAPIService.bookableCourse!;
  List<ActivityModel> get cours => _bookingAPIService.bookableCourse!
      .where((element) => element.type!.name == "cours")
      .toList();

  List<ActivityModel> get entrainement => _bookingAPIService.bookableCourse!
      .where((element) => element.type!.name == "entrainement")
      .toList();
  List<ActivityModel> get stages => _bookingAPIService.bookableCourse!
      .where((element) => element.type!.name == "stage")
      .toList();

  Future init() async {
    if (_bookingAPIService.bookableCourse!.isEmpty) {
      setBusy(true);
    }
    await _bookingAPIService.fetchCourses(token: _userService.token!);
    notifyListeners();
    setBusy(false);
  }

  Future<int> checkExistBooking(int courseId) async {
    return await _bookingAPIService.isBookingExist(
        token: _userService.token!, courseId: courseId);
  }

  Future cardSelected(int index) async {
    setBusy(true);
    int isExist = await checkExistBooking(bookableCourse[index].id!);
    debugPrint("Card Reserve click");
    print(isExist);
    if (isExist == 1) {
      showExistDialog();
    } else {
      debugPrint("click");
      navigateToReservation(bookable: bookableCourse[index]);
    }
    setBusy(false);
  }

  void navigateToReservation({required ActivityModel bookable}) async {
    _bookingService.setSelectedBookable = bookable;
    print(bookable);
    if (_bookingService.getselectedBookable != null) {
      _navigationService.navigateToView(const ReserveStepsView());
    }
  }

  void showExistDialog() {
    _dialogService.showDialog(
        description: "Vous avez déjà réservé ce cours.",
        barrierDismissible: false);
  }
}
