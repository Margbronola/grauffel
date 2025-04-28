import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:stacked/stacked.dart';

class GunListService with ReactiveServiceMixin {
  GunListService() {
    listenToReactiveValues(
        [_guns, _loader, _ammunition, _filterMarqueIds, _filterCaliberIds]);
  }

  final ReactiveValue<bool> _loader = ReactiveValue<bool>(false);
  bool get loader => _loader.value;

  //GUN
  final ReactiveValue<List<GunModel>?> _guns =
      ReactiveValue<List<GunModel>?>(null);
  List<GunModel>? get guns => _guns.value;

  //BULLET
  final ReactiveValue<List<AmmunitionsModel>?> _ammunition =
      ReactiveValue<List<AmmunitionsModel>?>(null);
  List<AmmunitionsModel>? get ammunition => _ammunition.value;

  final ReactiveValue<List<int>?> _filterMarqueIds =
      ReactiveValue<List<int>?>([]);
  List<int>? get filterMarqueIds => _filterMarqueIds.value;

  final ReactiveValue<List<int>?> _filterCaliberIds =
      ReactiveValue<List<int>?>([]);
  List<int>? get filterCaliberIds => _filterCaliberIds.value;

  Future setGunList(List<GunModel>? guns) async {
    if (guns != null) {
      _guns.value = guns;
    }
  }

  Future setAmmunitionList(List<AmmunitionsModel>? ammunitions) async {
    if (ammunitions != null) {
      _ammunition.value = ammunitions;
    }
  }

  void addFilter(int id, {required Filter filterType}) {
    if (filterType == Filter.marque) {
      _filterMarqueIds.value!.add(id);
    } else {
      _filterCaliberIds.value!.add(id);
    }
  }

  void removeFilter(int id, {required Filter filterType}) {
    if (filterType == Filter.marque) {
      _filterMarqueIds.value!.remove(id);
    } else {
      _filterCaliberIds.value!.remove(id);
    }
  }

  void clearFilter({required Filter filterType}) {
    if (filterType == Filter.marque) {
      _filterMarqueIds.value!.clear();
    } else {
      _filterCaliberIds.value!.clear();
    }
  }

  void clearAall() {
    _filterMarqueIds.value!.clear();
    _filterCaliberIds.value!.clear();
  }

  void setBusy(bool isBusy) {
    _loader.value = isBusy;
  }
}
