import 'package:date_picker_timeline/date_picker_timeline.dart';
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
  final ScrollController scrollController = ScrollController();

  final DateFormat formatter = DateFormat('yMMM');
  DateTime get selectedDate => _bookingService.getselectedDate;

  List<TimeModel> get availableTimes => _bookingAPIService.availableTime!;
  List<TimeModel> get selectedTime => _bookingService.getselectedTimes;

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
        print("SAME");
        numDaysTotal =
            DateTime(DateTime.now().year, DateTime.now().month, 0).day -
                currentDate
                    .difference(
                        DateTime(DateTime.now().year, DateTime.now().month, 0))
                    .inDays +
                1;
      } else {
        numDaysTotal = daysInMonth(currentDate.year, currentDate.month);
      }

      scrollController.animateTo(0,
          curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
    }

    notifyListeners();
  }

  Future init(BuildContext context) async {
    numDaysTotal = DateTime(DateTime.now().year, DateTime.now().month, 0).day -
        currentDate
            .difference(DateTime(DateTime.now().year, DateTime.now().month, 0))
            .inDays +
        1;

    setBusy(true);
    await fetchBookableActivity(DateTime.now());

    setBusy(false);
  }

  Future setDate(DateTime dateTime) async {
    if (dateTime.isBefore(DateTime.now().subtract(const Duration(days: 1)))) {
      print("yes");
    } else {
      _bookingService.setSelectedDate = dateTime;
      print(_bookingService.getselectedBookable);
      print(_bookingService.getselectedDate);
      await await fetchBookableActivity(dateTime);
    }
    notifyListeners();
  }

  Future fetchBookableActivity(DateTime dateTime) async {
    print(_bookingService.getselectedBookable!);
    await _bookingAPIService.fetchBookableActivity(
        token: _userService.token!,
        date: dateTime,
        activity_id:
            _bookingService.getselectedBookable!.activitysalle![0].activity_id!,
        client_id: _userService.user!.id!);
  }

  // void setCalendar() {
  //   _selectedValue = DateTime.now();
  // }

  void selectTime(TimeModel time) {
    print(_bookingService.getselectedTimes.length);
    if (!_bookingService.getselectedTimes.contains(time)) {
      if (_bookingService.getselectedTimes.isEmpty) {
        _bookingService.getselectedTimes.add(time);
        notifyListeners();
      } else {
        TimeModel shouldNext = availableTimes[availableTimes.indexOf(
                _bookingService.getselectedTimes[
                    _bookingService.getselectedTimes.length - 1]) +
            1];

        print(shouldNext);

        if (time == shouldNext) {
          _bookingService.getselectedTimes.add(time);
        }
      }
    } else {
      _bookingService.getselectedTimes.remove(time);
    }
    notifyListeners();
  }

  bool isSelected(TimeModel time) {
    if (_bookingService.getselectedTimes.contains(time)) {
      return true;
    }
    return false;
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_bookingService];
}
