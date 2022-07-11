import 'package:egczacademy/models/transaction_model.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';
import '../../services/user_api_service.dart';

class TransactionViewModel extends BaseViewModel {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  List<TransactionModel>? transactions;
  void init() async {
    print("FETCHING HISTORY");
    await fetchHistory();
  }

  Future fetchHistory() async {
    setBusy(true);
    transactions =
        await _userAPIService.fetchHistory(token: _userService.token!);
    setBusy(false);
  }
}
