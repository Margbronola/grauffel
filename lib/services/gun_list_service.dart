import 'package:egczacademy/app/components/filter_enum.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:stacked/stacked.dart';

class GunListService with ReactiveServiceMixin {
  GunListService() {
    listenToReactiveValues([_guns, _loader]);
  }

  final ReactiveValue<bool> _loader = ReactiveValue<bool>(false);
  bool get loader => _loader.value;

  final ReactiveValue<List<GunModel>?> _guns =
      ReactiveValue<List<GunModel>?>(null);
  List<GunModel>? get guns => _guns.value;

  Future setGunList(List<GunModel>? guns) async {
    if (guns != null) {
      _guns.value = guns;
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

  void setBusy(bool isBusy) {
    _loader.value = isBusy;
  }
}
