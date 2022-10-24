import 'package:egczacademy/models/book_model.dart';
import 'package:rxdart/rxdart.dart';

class BookingVm {
  BookingVm._singleton();
  static final BookingVm _instance = BookingVm._singleton();
  static BookingVm get instance => _instance;

  final BehaviorSubject<List<BookModel>> _subject =
      BehaviorSubject<List<BookModel>>();
  Stream<List<BookModel>> get stream => _subject.stream;
  List<BookModel> get current => _subject.value;

  void populate(List<BookModel> data) {
    _subject.add(data);
  }
}
