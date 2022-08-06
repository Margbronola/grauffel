import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';
import '../../../../../app/app.locator.dart';

class SelectDateViewModel extends BaseViewModel {
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final BookingService _bookingService = locator<BookingService>();
  final UserService _userService = locator<UserService>();
  final DatePickerController controller = DatePickerController();
  final ScrollController scrollController = ScrollController();

  DateTime _selectedValue = DateTime.now();
  final DateFormat formatter = DateFormat('yMMM');
  DateTime get selectedDate => _selectedValue;
  String get monthYear => formatter.format(_selectedValue);

  List<TimeModel> get availableTimes => _bookingAPIService.availableTime!;
  List<TimeModel> selectedTime = [];

  DateTime currentDate = DateTime.now();

  void forwardMonth() {
    currentDate = DateTime(currentDate.year, currentDate.month + 1, 1);
    controller.animateToDate(currentDate);
    print(currentDate);
    notifyListeners();
  }

  void prevMonth() {
    currentDate = DateTime(currentDate.year, currentDate.month - 1, 1);
    controller.animateToDate(currentDate);
    print(currentDate);
    notifyListeners();
  }

  Future init(BuildContext context) async {
    setBusy(true);
    await fetchBookableActivity(DateTime.now());
    setBusy(false);

    scrollController.addListener(() {
      print(scrollController.offset);

      final nextMOnth =
          DateTime(currentDate.year, currentDate.month + 1, currentDate.day);

      int offset = currentDate.difference(nextMOnth).inDays;
      var nextMonthoffset = ((offset * 60) * -1);
      if (scrollController.offset > nextMonthoffset) {
        print("positive");
      }

      print(nextMonthoffset);
      print("----");
      print(scrollController.offset);
    });
  }

  Future setDate(DateTime dateTime) async {
    _selectedValue = dateTime;
    await await fetchBookableActivity(dateTime);
    notifyListeners();
  }

  Future fetchBookableActivity(DateTime dateTime) async {
    await _bookingAPIService.fetchBookableActivity(
        token: _userService.token!,
        date: DateTime.now(),
        activity_id:
            _bookingService.selectedBookable!.activitysalle![0].activity_id!,
        client_id: _userService.user!.id!);
  }

  void setCalendar() {
    _selectedValue = DateTime.now();
  }

  void selectTime(TimeModel time) {
    if (!selectedTime.contains(time)) {
      selectedTime.add(time);
    } else {
      selectedTime.remove(time);
    }
    notifyListeners();
  }

  bool isSelected(TimeModel time) {
    if (selectedTime.contains(time)) {
      return true;
    }
    return false;
  }
}
