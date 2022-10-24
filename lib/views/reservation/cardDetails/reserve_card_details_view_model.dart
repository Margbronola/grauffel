import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/services/booking_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';

class ReserveCardDetailsViewModel extends BaseViewModel {
  final BookingAPIService _bookingAPIService = locator<BookingAPIService>();
  final UserService _userService = locator<UserService>();
  BookingModel? book;

  init(int bookingID) async {
    setBusy(true);

    print(bookingID);

    book = await _bookingAPIService.fetchBookingDetails(
        bookId: bookingID, token: _userService.token!);
    setBusy(false);
  }

  String htmlToText(
      {required String htmlFormatData, bool withNewLine = false}) {
    return htmlFormatData
        .replaceAll(RegExp("<.*?>"), withNewLine ? "\n" : "")
        .replaceAll("\t", "");
  }

  String time() {
    String time1 =
        "${book!.start.toString().split(" ")[1].split(":")[0]}h${book!.start.toString().split(" ")[1].split(":")[1]}";
    String time2 =
        "${book!.end.toString().split(" ")[1].split(":")[0]}h${book!.end.toString().split(" ")[1].split(":")[1]}";

    return "$time1 - $time2";
  }
}
