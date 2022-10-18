import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import '../models/ammunitions_model.dart';
import '../models/equipment_model.dart';
import '../models/gunModel/gun_model.dart';

class BookingService with ReactiveServiceMixin {
  BookingService() {
    listenToReactiveValues([
      _selectedTimes,
      _selectedGun,
      _selectedAmmunition,
      _selectedBookable,
      _selectedDate
    ]);
  }

  void dispose() {
    debugPrint("dispose");
    _selectedTimes.value = null;
    _selectedGun.value.clear();
    _selectedAmmunition.value.clear();
    _selectedEquipment.value.clear();
    _selectedBookable.value = null;
    _selectedDate.value = DateTime.now();
  }

  final ReactiveValue<TimeModel?> _selectedTimes =
      ReactiveValue<TimeModel?>(null);
  TimeModel? get getselectedTimes => _selectedTimes.value;

  final ReactiveValue<List<GunModel>> _selectedGun =
      ReactiveValue<List<GunModel>>([]);
  List<GunModel> get getselectedGun => _selectedGun.value;

  final ReactiveValue<List<AmmunitionsModel>> _selectedAmmunition =
      ReactiveValue<List<AmmunitionsModel>>([]);
  List<AmmunitionsModel> get getselectedAmmunition => _selectedAmmunition.value;

  final ReactiveValue<List<EquipmentModel>> _selectedEquipment =
      ReactiveValue<List<EquipmentModel>>([]);
  List<EquipmentModel> get getselectedEquipment => _selectedEquipment.value;

  final ReactiveValue<ActivityModel?> _selectedBookable =
      ReactiveValue<ActivityModel?>(null);
  ActivityModel? get getselectedBookable => _selectedBookable.value;

  final ReactiveValue<DateTime> _selectedDate =
      ReactiveValue<DateTime>(DateTime.now());
  DateTime get getselectedDate => _selectedDate.value;

  set setSelectedBookable(value) => _selectedBookable.value = value;
  set setSelectedDate(DateTime? value) => _selectedDate.value = value!;
  set setSelectedTime(TimeModel? value) => _selectedTimes.value = value;

  // void purchaseGun(value) => _selectedGun.value.add(value);
}
