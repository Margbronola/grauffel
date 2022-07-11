import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class ReservationViewModel extends BaseViewModel {
  bool showHelp = true;
  bool absorb = false;
  ScrollController scrolleController = ScrollController();

  init() {}

  void closeHelp() {
    print("HELP CLOSE");
    showHelp = false;
    notifyListeners();
  }
}
