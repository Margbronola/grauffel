import 'package:egczacademy/models/user_model.dart';

class UserService {
  String? _token;
  UserModel? _user;

  set fetchToken(value) => _token = value;
  set fetchUser(value) => _user = value;

  get token => _token;
  get user => _user;
}
