import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/profile_view.dart';
import 'package:egczacademy/views/reservation/cardDetails/reserve_card_detais_view.dart';
import 'package:egczacademy/views/shared/widget/dialog/setup_dialog_ui.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../models/booking_model.dart';
import '../../services/document_service.dart';
import '../../services/home_paging_service.dart';
import '../../view_model/booking_vm.dart';

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
  static final BookingVm _vm = BookingVm.instance;

  init() async {
    if (_homePagingService.isRefresh) {
      setBusy(true);
      //TODO setbusy
      await _bookingAPIService.fetchBookingHistory(token: _userService.token!);

      setBusy(false);
      _homePagingService.setRefresh(false);
    }
    notifyListeners();
  }

  final RefreshController refreshController1 =
      RefreshController(initialRefresh: false);

  final RefreshController refreshController2 =
      RefreshController(initialRefresh: false);

  void onRefresh() async {
    // monitor network fetch
    await _bookingAPIService.fetchBookingHistory(token: _userService.token!);
    refreshController1.refreshCompleted();
    refreshController2.refreshCompleted();
    notifyListeners();
  }

  void onLoading() async {
    print("Loadmre");
    print(_bookingAPIService.pagingModel);
    if (_bookingAPIService.pagingModel!.total !=
        _bookingAPIService.bookings!.length) {
      await _bookingAPIService.fetchBookingHistory(token: _userService.token!);
    } else {
      print("Max reach");
    }
    refreshController1.loadComplete();
    refreshController2.refreshCompleted();
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
    var response = await _dialogService.showCustomDialog(
        title: "Effacer",
        additionalButtonTitle: "warning",
        description: "Annulez votre réservation maintenant?",
        mainButtonTitle: "d'accord",
        secondaryButtonTitle: "annuler",
        variant: DialogType.confirmation);

    if (response != null) {
      if (response.confirmed) {
        setBusy(true);
        await _bookingAPIService.cancelBook(
          bookingId: bookingId,
          token: _userService.token!,
        );

        // List.from(_vm.current).removeWhere((element) => element.id == bookingId);
        _vm.remove(bookingId);
        setBusy(false);
      }
    }
    notifyListeners();
  }

  void showDetailsCardNew(int bookingID) async {
    //TODO: show details
    _navigationService.navigateToView(ReserveCardDetailsView(
      bookId: bookingID,
    ));
  }

  // void showCardDetails({required BookingModel bookingModel}) async {
  //   List<AmmunitionsModel> ammunitions = bookingModel.ammunitions!.toList();
  //   ammunitions.removeWhere((element) => element.pivot!.quantity == 0);
  //   bookingModel = bookingModel.copyWith(ammunitions: ammunitions);
  //   print(bookingModel.ammunitions!.length);

  // }

  List days = ['lun', 'mar', 'mer', 'jeu', 'ven', 'sam', 'dim'];

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_homePagingService];
}
