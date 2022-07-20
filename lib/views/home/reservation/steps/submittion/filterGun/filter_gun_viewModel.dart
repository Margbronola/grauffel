import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../../app/app.locator.dart';

class FilterGunViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  List marque = ['ARMSCORE', 'BERRETA', 'COLT'];
  void cancelFilter() {
    //uncheck all
  }

  void check(int index) {}
}
