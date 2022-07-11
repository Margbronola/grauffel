import 'package:egczacademy/models/user_model.dart';
import 'package:stacked/stacked.dart';

class UserService with ReactiveServiceMixin {
  UserService() {
    //3
    listenToReactiveValues([_user, _token]);
  }

  //2
  final ReactiveValue<UserModel?> _user = ReactiveValue<UserModel?>(null);
  final ReactiveValue<String?> _token = ReactiveValue<String?>(null);
  UserModel? get user => _user.value;
  String? get token => _token.value;

  void updateUser(UserModel? user) {
    _user.value = user;
  }

  void updateToken(String token) {
    _token.value = token;
  }
}
