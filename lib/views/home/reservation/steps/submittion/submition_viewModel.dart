import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../../app/app.locator.dart';
import 'package:intl/intl.dart';
import '../../../../../services/booking_api_service.dart';
import '../../../../shared/widget/dialog/setup_dialog_ui.dart';

class SubmitionViewModel extends ReactiveViewModel {
  final DialogService _dialogService = locator<DialogService>();
  final BookingService _bookingService = locator<BookingService>();
  final BookingAPIService _bookingApiService = locator<BookingAPIService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final HomePagingService _homePagingService = locator<HomePagingService>();
  final UserService _userService = locator<UserService>();

  UserModel get user => _userService.user!;
  FocusNode commentFocusNode = FocusNode();

  ActivityModel get bookedModel => _bookingService.getselectedBookable!;
  bool get isCourse => _bookingService.getselectedBookable!.status == 2;
  List<GunModel> get gunList => _bookingService.getselectedGun;
  List<AmmunitionsModel> get ammunitionList =>
      _bookingService.getselectedAmmunition;
  List<EquipmentModel> get equipmentList =>
      _bookingService.getselectedEquipment;
  TimeModel? get selectedTime => _bookingService.getselectedTimes;

  DateFormat? timeFormat;

  void cancel() {
    _navigationService.back();
  }

  String time() {
    String time1 =
        "${_bookingService.getselectedTimes!.time!.split("-")[0].split(":")[0]}h${_bookingService.getselectedTimes!.time!.split("-")[0].split(":")[1]}";
    String time2 =
        "${_bookingService.getselectedTimes!.time!.split("-")[1].split(":")[0]}h${_bookingService.getselectedTimes!.time!.split("-")[1].split(":")[1]}";
    print("$time1 - $time2");
    return "$time1 - $time2";
  }

  String date() {
    return DateFormat.MMMEd('fr').format(_bookingService.getselectedDate);
  }

  TextEditingController commentTextController = TextEditingController();
  bool isCommentFucos = false;

  void init() {
    print('its not course');
    commentFocusNode.addListener(() {
      isCommentFucos = commentFocusNode.hasFocus;
      notifyListeners();
    });

    time();
    date();
  }

  @override
  void dispose() {
    _bookingService.dispose();
    super.dispose();
  }

  Future<bool> reserveBook() async {
    return await _bookingApiService.book(
      token: _userService.token!,
      date: _bookingService.getselectedDate,
      time: _bookingService.getselectedTimes!.time!,
      activityId: _bookingService.getselectedBookable!.id!,
      guns: _bookingService.getselectedGun,
      ammunitions: _bookingService.getselectedAmmunition,
      equipments: _bookingService.getselectedEquipment,
    );
  }

  Future<bool> reserveCourse() async {
    return await _bookingApiService.bookCourse(
      course_id: _bookingService.getselectedBookable!.id!,
      token: _userService.token!,
      guns: _bookingService.getselectedGun,
      ammunitions: _bookingService.getselectedAmmunition,
      equipments: _bookingService.getselectedEquipment,
    );
  }

  void reserver() async {
    setBusy(true);
    // double allGunPrice = 0;
    // double allAmmunitionPrice = 0;
    // double allEquipmentPrice = 0;

    // allGunPrice = gunList
    //     .map((e) => e.price!)
    //     .toList()
    //     .reduce((value, element) => value + element);

    // allAmmunitionPrice = ammunitionList
    //     .map((e) => e.price! * e.qty)
    //     .toList()
    //     .reduce((value, element) => value + element);

    // allEquipmentPrice = ammunitionList
    //     .map((e) => e.price!)
    //     .toList()
    //     .reduce((value, element) => value + element);

    // double total = bookedModel.price! +
    //     allGunPrice +
    //     allEquipmentPrice +
    //     allAmmunitionPrice;

    // print("gunsPrice: $allGunPrice");
    // print("ammunition: $allAmmunitionPrice");
    // print("ammunition: $allEquipmentPrice");
    // print("total: $total");
    // print(user.credit_points!);

    bool isBooked = isCourse ? await reserveCourse() : await reserveBook();

    if (isBooked) {
      var response = await _dialogService.showCustomDialog(
          mainButtonTitle: "ok",
          variant: DialogType.reserve,
          barrierDismissible: false);

      if (response != null) {
        if (response.confirmed) {
          _bookingApiService.fetchActivesAndPast(
              _userService.token, _userService.user!.id.toString());
          _navigationService.back();
          _homePagingService.setRefresh(true);
          _homePagingService.onTap(0);
        }
      }
    } else {
      var response = await _dialogService.showCustomDialog(
          mainButtonTitle: "ok",
          variant: DialogType.reservefail,
          barrierDismissible: false);

      if (response != null) {
        if (response.confirmed) {
          _navigationService.back();
        } else {
          _navigationService.back();
        }
      }
    }

    setBusy(false);
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices =>
      [_bookingService, _homePagingService];
}
