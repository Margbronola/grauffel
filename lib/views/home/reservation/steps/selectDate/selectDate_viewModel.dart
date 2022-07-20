import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';

class SelectDateViewModel extends BaseViewModel {
  final DatePickerController controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  final DateFormat formatter = DateFormat('yMMM');

  DateTime get selectedDate => _selectedValue;

  String get monthYear => formatter.format(_selectedValue);

  void setDate(DateTime dateTime) {
    _selectedValue = dateTime;
    notifyListeners();
  }

  void setCalendar() {
    _selectedValue = DateTime.now();
  }
}
