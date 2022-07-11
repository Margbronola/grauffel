import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/edit_profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends ReactiveViewModel {
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  final NavigationService _navigationService = locator<NavigationService>();

  UserModel? get user => _userService.user!;

  String get userValidate => _userService.user!.verification! > 1
      ? "Compte non validé"
      : "Not Validated";

  Future<XFile?> pickInGallary() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  // Capture a photo
  Future<XFile?> captureImage() async {
    XFile? image = await _picker.pickImage(source: ImageSource.camera);
    return image;
  }

  void editProrifle() {
    _navigationService.navigateToView(const EditProfileView());
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_userService];
}
