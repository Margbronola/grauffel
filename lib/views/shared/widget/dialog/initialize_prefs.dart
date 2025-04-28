import 'package:egczacademy/services/sharedpref_service.dart';

import '../../../../app/app.locator.dart';

final dialogService = locator<SharedPrefService>();

Future<void> initializePrefs() async {
  await dialogService.initializePrefs();
}
