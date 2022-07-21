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

  final List<int> _filterMarqueIds = [];

  List<int> get filterMarqueIds => _filterMarqueIds;

  Future setGunList(List<GunModel>? guns) async {
    if (guns != null) {
      _guns.value = guns;
    }
  }

  void addFilter(int id) {
    _filterMarqueIds.add(id);
  }

  void removeFilter(int id) {
    _filterMarqueIds.remove(id);
  }

  void clearFilter() {
    _filterMarqueIds.clear();
  }

  void setBusy(bool isBusy) {
    _loader.value = isBusy;
  }
}
