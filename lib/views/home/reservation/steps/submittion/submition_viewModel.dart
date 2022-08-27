import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../app/app.locator.dart';
import '../../../../../models/bookable_model.dart';
import 'package:intl/intl.dart';

class SubmitionViewModel extends ReactiveViewModel {
  final DialogService _dialogService = locator<DialogService>();
  final BookingService _bookingService = locator<BookingService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final HomePagingService _homePagingService = locator<HomePagingService>();
  final UserService _userService = locator<UserService>();

  UserModel get user => _userService.user!;
  FocusNode commentFocusNode = FocusNode();

  BookableModel get bookedModel => _bookingService.getselectedBookable!;

  List<GunModel> get gunList => _bookingService.getselectedGun;
  List<AmmunitionsModel> get ammunitionList =>
      _bookingService.getselectedAmmunition;
  List<EquipmentModel> get equipmentList =>
      _bookingService.getselectedEquipment;

  DateFormat? timeFormat;

  String time() {
    if (_bookingService.getselectedTimes.length > 1) {
      String time1 =
          "${_bookingService.getselectedTimes[0].time!.split("-")[0].split(":")[0]}h${_bookingService.getselectedTimes[0].time!.split("-")[0].split(":")[1]}";
      String time2 =
          "${_bookingService.getselectedTimes[_bookingService.getselectedTimes.length - 1].time!.split("-")[1].split(":")[0]}h${_bookingService.getselectedTimes[_bookingService.getselectedTimes.length - 1].time!.split("-")[1].split(":")[1]}";

      print("$time1 - $time2");

      return "$time1 - $time2";
    }
    return "Unspicified";
  }

  String date() {
    return DateFormat.MMMEd('fr').format(_bookingService.getselectedDate);
  }

  TextEditingController commentTextController = TextEditingController();
  bool isCommentFucos = false;

  void init() {
    commentFocusNode.addListener(() {
      isCommentFucos = commentFocusNode.hasFocus;
      notifyListeners();
    });

    time();
    date();
    print(_bookingService.getselectedGun);
  }

  void showCard() async {
    print(user.credit_points);
    print(bookedModel.price);

    // var response = await _dialogService.showCustomDialog(
    //     mainButtonTitle: "ok",
    //     variant: DialogType.reserve,
    //     barrierDismissible: true);

    // if (response != null) {
    //   if (response.confirmed) {
    //     _navigationService.back();
    //     _homePagingService.onTap(0);
    //   } else {
    //     print("cancel");
    //   }
    // }
  }

  void reserve() {}

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices =>
      [_bookingService, _homePagingService];
}
