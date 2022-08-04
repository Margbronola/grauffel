import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';
import '../../../../../app/app.locator.dart';

class SelectDateViewModel extends BaseViewModel {
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final BookingService _bookingService = locator<BookingService>();
  final UserService _userService = locator<UserService>();
  final DatePickerController controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  final DateFormat formatter = DateFormat('yMMM');
  DateTime get selectedDate => _selectedValue;
  String get monthYear => formatter.format(_selectedValue);

  List<TimeModel> get availableTimes => _bookingAPIService.availableTime!;
  List<TimeModel> selectedTime = [];

  Future init() async {
    await fetchBookableActivity(DateTime.now());
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
