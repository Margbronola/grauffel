import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/home_paging_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
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

  ActivityModel? get bookedModel => _bookingService.getselectedBookable!;
  bool get isCourse => bookedModel!.type == null
      ? false
      : bookedModel!.type!.name == "cours" ||
          bookedModel!.type!.name == "stage" ||
          bookedModel!.type!.name == "entrainement";
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
    return "$time1 - $time2";
  }

  String date() {
    return DateFormat.MMMEd('fr').format(_bookingService.getselectedDate!);
  }

  TextEditingController commentTextController = TextEditingController();
  bool isCommentFucos = false;

  String errorString = "";

  void init() {
    commentFocusNode.addListener(() {
      isCommentFucos = commentFocusNode.hasFocus;
      notifyListeners();
    });

    time();
    date();
  }

  Future<bool> reserveBook() async {
    return await _bookingApiService.book(
      token: _userService.token!,
      date: _bookingService.getselectedDate!,
      time: _bookingService.getselectedTimes!.time!,
      activityId: _bookingService.getselectedBookable!.id!,
      guns: _bookingService.getselectedGun,
      ammunitions: _bookingService.getselectedAmmunition,
      equipments: _bookingService.getselectedEquipment,
    );
  }

  Future<bool> reserveCourse() async {
    return await _bookingApiService.bookCourse(
      courseId: _bookingService.getselectedBookable!.id!,
      token: _userService.token!,
      guns: _bookingService.getselectedGun,
      ammunitions: _bookingService.getselectedAmmunition,
      equipments: _bookingService.getselectedEquipment,
    );
  }

  Future<String?> _startClosing() async {
    await Future.delayed(const Duration(seconds: 5), () {
      _homePagingService.setRefresh(true);
      _homePagingService.onTap(0);
      _navigationService.back();
    });
    return 'Close Dialog by app';
  }

  void reserver() async {
    setBusy(true);

    bool isBookedCourse =
        isCourse ? await reserveCourse() : await reserveBook();

    _startClosing();
    if (isBookedCourse) {
      var response = await _dialogService.showCustomDialog(
          mainButtonTitle: "ok",
          variant: DialogType.reserve,
          barrierDismissible: false,
          data: errorString);
      _homePagingService.setRefresh(true);

      _homePagingService.onTap(0);
      _navigationService.back();

      if (response != null) {
        if (response.confirmed) {
          await _bookingApiService.fetchBookingHistory(
              token: _userService.token!);
        }
      }

      _startClosing().timeout(
        const Duration(seconds: 1),
        onTimeout: () => 'Manualy exit',
      );
    } else {
      await _dialogService.showCustomDialog(
          mainButtonTitle: "ok",
          variant: DialogType.reservefail,
          barrierDismissible: false,
          data: errorString);

      _homePagingService.onTap(0);
      _navigationService.back();

      _startClosing().timeout(
        const Duration(seconds: 1),
        onTimeout: () => 'Manualy exit',
      );
    }

    setBusy(false);
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices =>
      [_bookingService, _homePagingService];
}
