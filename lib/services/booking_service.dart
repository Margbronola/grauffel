import 'package:egczacademy/models/bookable_model.dart';

import '../models/ammunitions_model.dart';
import '../models/equipment_model.dart';
import '../models/gunModel/gun_model.dart';

class BookingService {
  BookableModel? _selectedBookable;

  set setSelectedBookable(value) => _selectedBookable = value;
  BookableModel? get selectedBookable => _selectedBookable;

  List<GunModel> selectedGun = [];
  List<AmmunitionsModel> selectedAmmunition = [];
  List<EquipmentModel> selectedEquipment = [];
}
