import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:stacked/stacked.dart';

class GunListService with ReactiveServiceMixin {
  GunListService() {
    listenToReactiveValues([_guns, _loader, _ammunition]);
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

  final List<int> _filterMarqueIds = [];
  final List<int> _filterCaliberIds = [];

  List<int> get filterMarqueIds => _filterMarqueIds;
  List<int> get filterCaliberIds => _filterCaliberIds;

  void addFilter(int id, {required Filter filterType}) {
    if (filterType == Filter.marque) {
      _filterMarqueIds.add(id);
    } else {
      _filterCaliberIds.add(id);
    }
  }

  void removeFilter(int id, {required Filter filterType}) {
    if (filterType == Filter.marque) {
      _filterMarqueIds.remove(id);
    } else {
      _filterCaliberIds.remove(id);
    }
  }

  void clearFilter({required Filter filterType}) {
    if (filterType == Filter.marque) {
      _filterMarqueIds.clear();
    } else {
      _filterCaliberIds.clear();
    }
  }

  void clearAall() {
    _filterMarqueIds.clear();
    _filterCaliberIds.clear();
  }

  void setBusy(bool isBusy) {
    _loader.value = isBusy;
  }
}
