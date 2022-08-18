import 'package:egczacademy/models/bookable_model.dart';

import '../models/ammunitions_model.dart';
import '../models/equipment_model.dart';
import '../models/gunModel/gun_model.dart';

class BookingService {
  BookableModel? _selectedBookable;

  set setSelectedBookable(value) => _selectedBookable = value;
  BookableModel? get selectedBookable => _selectedBookable;

  final List<GunModel> _selectedGun = [];
  final List<AmmunitionsModel> _selectedAmmunition = [];
  final List<EquipmentModel> _selectedEquipment = [];

  List<GunModel> get getselectedGun => _selectedGun;
  List<AmmunitionsModel> get getselectedAmmunition => _selectedAmmunition;
  List<EquipmentModel> get getselectedEquipment => _selectedEquipment;
}
