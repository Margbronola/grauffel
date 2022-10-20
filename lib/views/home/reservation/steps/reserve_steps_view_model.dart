import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import 'selectDate/select_date_view.dart';
import 'submittion/ammunitionView/ammunition_view.dart';
import 'submittion/equipment/equipment_view.dart';
import 'submittion/gunsListVIew/armore_view.dart';
import 'submittion/submition_view.dart';

class ReserveStepsViewModel extends BaseViewModel {
  final BookingService bookingService = locator<BookingService>();
  PageController? pageController = PageController();
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  bool get isCourse => bookingService.getselectedBookable!.type == null
      ? false
      : bookingService.getselectedBookable!.type!.name == "cours" ||
          bookingService.getselectedBookable!.type!.name == "stage" ||
          bookingService.getselectedBookable!.type!.name == "entrainement";

  List<Widget> pages = [];

  void init() {
    if (isCourse) {
      bookingService.setSelectedDate =
          DateTime.parse(bookingService.getselectedBookable!.date_from!);

      bookingService.setSelectedTime = TimeModel(
          time:
              '${bookingService.getselectedBookable!.start_time} - ${bookingService.getselectedBookable!.end_time}');
      pages = [
        ArmoreView(
          onTap: () {
            submitEvents(1);
          },
          skipTap: () {
            skipPage(1);
          },
        ),
        AmmunitionView(
          onTap: () {
            submitEvents(2);
          },
          skipTap: () {
            skipPage(2);
          },
        ),
        EquipmentView(
          onTap: () {
            submitEvents(3);
          },
          skipTap: () {
            skipPage(3);
          },
        ),
        const SubmitionView()
      ];
    } else {
      bookingService.setSelectedTime = null;
      pages = [
        SelectDateView(
          onTap: () {
            submitEvents(1);
          },
        ),
        ArmoreView(
          onTap: () {
            submitEvents(2);
          },
          skipTap: () {
            skipPage(2);
          },
        ),
        AmmunitionView(
          onTap: () {
            submitEvents(3);
          },
          skipTap: () {
            skipPage(3);
          },
        ),
        EquipmentView(
          onTap: () {
            submitEvents(4);
          },
          skipTap: () {
            skipPage(4);
          },
        ),
        const SubmitionView()
      ];
    }
  }

  void submitEvents(int index) {
    nextPage(index);
  }

  void submitGuns(int index) {
    nextPage(index);
  }

  void skipPage(int index) {
    if (index == 1) {
      //gun
      bookingService.getselectedGun.clear();
      notifyListeners();
    } else if (index == 2) {
      //ammunition
      bookingService.getselectedAmmunition.clear();
      notifyListeners();
    } else if (index == 3) {
      bookingService.getselectedEquipment.clear();
      notifyListeners();
      //equipment
    }
    debugPrint(index.toString());
    nextPage(index);
  }

  void nextPage(int index) {
    nextIndex(index);
    pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    notifyListeners();
  }

  void reversePage(int index) {
    if (index < _selectedIndex) {
      nextIndex(index);
      pageController!.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      notifyListeners();
    }
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
