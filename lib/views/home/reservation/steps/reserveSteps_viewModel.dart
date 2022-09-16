import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/services/booking_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import 'selectDate/selectDate_view.dart';
import 'submittion/ammunitionView/ammunition_view.dart';
import 'submittion/equipment/equipment_view.dart';
import 'submittion/guns_list_view.dart/armore_view.dart';
import 'submittion/submition_view.dart';

class ReserveStepsViewModel extends BaseViewModel {
  final BookingService bookingService = locator<BookingService>();
  PageController? pageController = PageController();
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  bool get isCourse => bookingService.getselectedBookable!.status == 2;

  List<Widget> pages = [];

  void init() {
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
    }
  }

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
