import 'package:egczacademy/models/bookable_model.dart';

class BookingService {
  BookableModel? _selectedBookable;

  set setSelectedBookable(value) => _selectedBookable = value;
  BookableModel? get selectedBookable => _selectedBookable;
}
