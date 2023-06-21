// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:date_picker_timetable/date_picker_widget.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:quiver/time.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';
import '../../../../../app/app.locator.dart';

class SelectDateViewModel extends ReactiveViewModel {
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final BookingService _bookingService = locator<BookingService>();
  final UserService _userService = locator<UserService>();
  final DatePickerController controller = DatePickerController();
  late ScrollController scrollController = ScrollController();
  final DateFormat formatter = DateFormat('yMMM');
  DateTime selectedDate = DateTime.now();

  List<TimeModel> get availableTimes => _bookingAPIService.availableTime!;
  TimeModel? get selectedTime => _bookingService.getselectedTimes;

  List<DateTime> inactive = [];
  List<DateTime> activeDates = [];

  DateTime currentDate = DateTime.now().toUtc();

  int numDaysTotal = 0;

  String headerDate() {
    final DateFormat formatter = DateFormat('MMMM');
    final String formatted =
        "${formatter.format(currentDate).i18n()} ${currentDate.year}";
    return (formatted);
  }

  void forwardMonth() {
    currentDate = DateTime(currentDate.year, currentDate.month + 1, 1);
    numDaysTotal = daysInMonth(currentDate.year, currentDate.month);
    print(numDaysTotal);
    scrollController.animateTo(0,
        curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
    notifyListeners();
  }

  void prevMonth() {
    if (currentDate.isAfter(DateTime.now())) {
      currentDate = DateTime(currentDate.year, currentDate.month - 1, 1);

      if (currentDate.month == DateTime.now().month) {
        currentDate =
            DateTime(currentDate.year, currentDate.month, DateTime.now().day);
        debugPrint("SAME");
        numDaysTotal =
            DateTime(DateTime.now().year, DateTime.now().month, 0).day -
                currentDate
                    .difference(
                        DateTime(DateTime.now().year, DateTime.now().month, 0))
                    .inDays +
                2;
      } else {
        numDaysTotal = daysInMonth(currentDate.year, currentDate.month);
      }

      scrollController.animateTo(0,
          curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
    }

    notifyListeners();
  }

  Future init(BuildContext context) async {
    setBusy(true);
    debugPrint("INIT SELECT DATE");

    print(selectedDate);

    numDaysTotal = DateTime(DateTime.now().year, DateTime.now().month, 0).day -
        currentDate
            .difference(DateTime(DateTime.now().year, DateTime.now().month, 0))
            .inDays +
        2;

    if (_bookingService.getselectedDate != null) {
      await fetchBookableActivity(_bookingService.getselectedDate!);
      selectedDate = _bookingService.getselectedDate!;
      notifyListeners();
    } else {
      await fetchBookableActivity(selectedDate);
      _bookingService.setSelectedDate = selectedDate;

      notifyListeners();
    }

    setBusy(false);
  }

  Future setDate(DateTime dateTime) async {
    _bookingService.setSelectedTime = null;
    if (dateTime.isBefore(DateTime.now().subtract(const Duration(days: 1)))) {
      debugPrint("yes");
    } else {
      _bookingService.setSelectedDate = dateTime;
      await fetchBookableActivity(dateTime);
    }
    notifyListeners();
  }

  Future fetchBookableActivity(DateTime dateTime) async {
    setBusy(true);
    await _bookingAPIService.fetchBookableActivity(
        token: _userService.token!,
        date: dateTime,
        activityId: _bookingService.getselectedBookable!.id!);
    setBusy(false);
  }

  void selectTime(TimeModel time) {
    _bookingService.setSelectedTime = time;
    notifyListeners();
  }

  bool isSelected(TimeModel time) {
    return _bookingService.getselectedTimes == time;
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_bookingService];
}
