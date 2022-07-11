import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/user_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class EditProfileViewModel extends BaseViewModel {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  // final TextEditingController codeController = TextEditingController();
  final TextEditingController villeController = TextEditingController();

  late FocusNode emailFocusNode;
  late FocusNode dateNode;
  late FocusNode phoneNode;
  late FocusNode addressNode;
  late FocusNode codeNode;
  late FocusNode villeNode;

  void init() {
    emailFocusNode = FocusNode();
    dateNode = FocusNode();
    phoneNode = FocusNode();
    addressNode = FocusNode();
    codeNode = FocusNode();
    villeNode = FocusNode();

    if (user != null) {
      emailController.text = user!.email!;
      dateController.text = user!.created_at.toString();
      phoneController.text = user!.SIA_number.toString();
      addresscontroller.text = user!.address!;
      // codeController.text = user!.country_id!.toString();
      villeController.text = user!.country_id!.toString();
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    dateController.dispose();
    emailFocusNode.dispose();
    phoneController.dispose();
    addresscontroller.dispose();
    // codeController.dispose();
    villeController.dispose();

    dateNode.dispose();
    phoneNode.dispose();
    addressNode.dispose();
    codeNode.dispose();
    villeNode.dispose();
    super.dispose();
  }

  UserModel? get user => _userService.user!;
  void save() {
    if (image != null) {
      _userAPIService.updateAvatar(image: image, token: _userService.token!);
    } else {
      print(image);
    }

    if (formKey.currentState!.validate()) {
      _userAPIService
          .updateDetails(
              userToEdit: UserModel(address: addresscontroller.text),
              token: _userService.token!)
          .whenComplete(() =>
              _userAPIService.fethUserDetailsApi(token: _userService.token!));
    }
    notifyListeners();
  }

  void changeProfilePick() {}
  Future<void> pickInGallary() async {
    try {
      image = await _picker.pickImage(source: ImageSource.gallery);

      print("image : $image");
    } catch (e) {
      print(e);
    }
  }
}
