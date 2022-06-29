import 'package:stacked/stacked.dart';

class ReservationViewModel extends BaseViewModel {
  bool showHelp = true;

  void closeHelp() {
    print("HELP CLOSE");
    showHelp = false;
    notifyListeners();
  }
}
