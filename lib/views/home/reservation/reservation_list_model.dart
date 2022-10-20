import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/reservation/steps/reserve_steps_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
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
    await _bookingAPIService.fetchBookable(token: _userService.token!);
    notifyListeners();
    setBusy(false);
  }

  Future cardSelected(int index) async {
    setBusy(true);
    navigateToReservation(bookable: bookables[index]);
    setBusy(false);
  }

  void navigateToReservation({required ActivityModel bookable}) async {
    _bookingService.setSelectedBookable = bookable;
    if (_bookingService.getselectedBookable != null) {
      _navigationService.navigateToView(const ReserveStepsView());
    }
  }

  //TODO: refresh
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);

  void onRefresh() async {
    // monitor network fetch
    await _bookingAPIService.fetchBookable(token: _userService.token!);
    // if failed,use refreshFailed()
    refreshController.refreshCompleted();
    notifyListeners();
  }

  void onLoading() async {
    //TODO: fetch more
    // monitor network fetch
    // await _bookingAPIService.fetchBookable(token: _userService.token!);
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    refreshController.loadComplete();
    notifyListeners();
  }
}
