import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class ReservationViewModel extends BaseViewModel {
  bool showHelp = true;
  bool absorb = false;
  ScrollController scrolleController = ScrollController();
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final UserService _userService = locator<UserService>();

  UserModel get user => _userService.user!;

  List<BookingModel>? actives = [];
  List<BookingModel>? past = [];

  init() async {
    setBusy(true);
    await _bookingAPIService
        .fetchMyBookings(
            token: _userService.token!,
            userId: _userService.user!.id.toString())
        .whenComplete(() {
      if (_bookingAPIService.bookings != null) {
        actives = _bookingAPIService.bookings!
            .where((e) => e.status_name == "active")
            .toList();

        past = _bookingAPIService.bookings!
            .where((e) => e.status_name == "done")
            .toList();
      }
      print("Actives: ${actives!.length}");
      print("Past: ${past!.length}");
    });
    notifyListeners();
    setBusy(false);
  }

  void closeHelp() {
    print("HELP CLOSE");
    showHelp = false;
    notifyListeners();
  }

  void gotoProfile() {
    _navigationService.navigateToView(const ProfileView());
  }

  List days = ['lun', 'mar', 'mer', 'jeu', 'ven', 'sam', 'dim'];
}
