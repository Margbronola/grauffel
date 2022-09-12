import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';

class ReserveStepsViewModel extends BaseViewModel {
  final BookingService bookingService = locator<BookingService>();
  PageController? pageController = PageController();
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  bool get isCourse => bookingService.getselectedBookable!.name == courseTSV;

  void submitEvents(int index) {
    nextPage(index);
  }

  void submitGuns(int index) {
    nextPage(index);
  }

  void skipPage(int index) {
    if (index == 2) {
      //gun
      bookingService.getselectedGun.clear();
      notifyListeners();
    } else if (index == 3) {
      //ammunition
      bookingService.getselectedAmmunition.clear();
      notifyListeners();
    } else if (index == 4) {
      bookingService.getselectedEquipment.clear();
      notifyListeners();
      //equipment
    }

    nextPage(index);
  }

  void nextPage(int index) {
    nextIndex(index);
    pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    notifyListeners();
  }

  void nextIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController!.dispose();
    super.dispose();
  }
}
