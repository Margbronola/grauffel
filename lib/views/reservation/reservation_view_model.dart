import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/profile_view.dart';
import 'package:egczacademy/views/reservation/cardDetails/reserve_card_details_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../models/booking_model.dart';
import '../../services/document_service.dart';
import '../../services/home_paging_service.dart';

class ReservationViewModel extends ReactiveViewModel {
  bool showHelp = true;
  bool absorb = false;
  final HomePagingService _homePagingService = locator<HomePagingService>();
  ScrollController scrolleController = ScrollController();
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final DialogService _dialogService = locator<DialogService>();
  final UserService _userService = locator<UserService>();
  final DocumentService _documentService = locator<DocumentService>();

  UserModel get user => _userService.user!;
  List<BookingModel>? get actives => _bookingAPIService.actives;
  List<BookingModel>? get past => _bookingAPIService.past;

  init() async {
    if (_homePagingService.isRefresh) {
      setBusy(true);
      await _bookingAPIService.fetchActivesAndPast(
          _userService.token, _userService.user!.id.toString());

      _homePagingService.setRefresh(false);
      setBusy(false);
    }
    notifyListeners();
  }

  void closeHelp() {
    debugPrint("HELP CLOSE");
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

  Future cancelBook(int bookingId) async {
    var response = await _dialogService.showDialog(
      description: "Annulez votre réservation maintenant?",
      buttonTitle: "d'accord",
      cancelTitle: "annuler",
    );

    if (response != null) {
      if (response.confirmed) {
        setBusy(true);
        await _bookingAPIService.cancelBook(
          bookingId: bookingId,
          token: _userService.token!,
        );
        _bookingAPIService.actives!
            .removeWhere((element) => element.id == bookingId);
        setBusy(false);
      }
    }
    notifyListeners();
  }

  void showCardDetails(int index, {bool isActive = false}) async {
    _navigationService.navigateToView(ReserveCardDetails(
      bookingModel: isActive
          ? _bookingAPIService.actives![index]
          : _bookingAPIService.actives![index],
      user: _userService.user!,
    ));
  }

  List days = ['lun', 'mar', 'mer', 'jeu', 'ven', 'sam', 'dim'];

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_homePagingService];
}
