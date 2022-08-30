import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/profile_view.dart';
import 'package:egczacademy/views/reservation/cardDetails/reserveCardDetails_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../services/document_api_service.dart';
import '../../services/document_service.dart';

class ReservationViewModel extends BaseViewModel {
  bool showHelp = true;
  bool absorb = false;
  ScrollController scrolleController = ScrollController();
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final DialogService _dialogService = locator<DialogService>();
  final UserService _userService = locator<UserService>();

  final DocumentAPIService _documentAPIService = locator<DocumentAPIService>();
  final DocumentService _documentService = locator<DocumentService>();

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
    await _documentService.fetch(
        userService: _userService, documentAPIService: _documentAPIService);
    notifyListeners();
    setBusy(false);
  }

  void closeHelp() {
    print("HELP CLOSE");
    showHelp = false;
    notifyListeners();
  }

  bool isMandatoryPass() {
    return _documentService.mandatoryDocumentTypes().length ==
        _documentService.mandatoryNumberUploaded();
  }

  void gotoProfile() {
    _navigationService.navigateToView(const ProfileView(
      isFromHome: false,
    ));
  }

  void showCardDetails() async {
    print("details");
    _navigationService.navigateToView(const ReserveCardDetails());
  }

  List days = ['lun', 'mar', 'mer', 'jeu', 'ven', 'sam', 'dim'];
}
