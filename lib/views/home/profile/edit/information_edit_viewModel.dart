import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/user_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class InformationEditViewModel extends ReactiveViewModel {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController villeController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode dateNode = FocusNode();
  FocusNode phoneNode = FocusNode();
  FocusNode addressNode = FocusNode();
  FocusNode codeNode = FocusNode();
  FocusNode villeNode = FocusNode();

  bool isEmailFucos = false;
  bool isDateFucos = false;
  bool isNumberFucos = false;
  bool isAddressFucos = false;
  bool isPostalFucos = false;
  bool isVilleFucos = false;

  String dateFormat(DateTime date) {
    // final DateFormat formatter = DateFormat('MMMM');
    final String formatted = "${date.day}/${date.month}/${date.year}";
    return formatted;
  }

  void init() {
    if (user != null) {
      emailController.text = user!.email!;
      dateController.text = dateFormat(user!.created_at!);
      phoneController.text = user!.SIA_number.toString();
      addresscontroller.text = user!.address!;
      villeController.text = user!.country_id!.toString();
    }

    emailFocusNode.addListener(() {
      isEmailFucos = emailFocusNode.hasFocus;
      notifyListeners();
    });

    dateNode.addListener(() {
      isDateFucos = dateNode.hasFocus;
      notifyListeners();
    });
    phoneNode.addListener(() {
      isNumberFucos = phoneNode.hasFocus;
      notifyListeners();
    });
    dateNode.addListener(() {
      isDateFucos = dateNode.hasFocus;
      notifyListeners();
    });
    addressNode.addListener(() {
      isAddressFucos = addressNode.hasFocus;
      notifyListeners();
    });
    villeNode.addListener(() {
      isVilleFucos = villeNode.hasFocus;
      notifyListeners();
    });
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
  void save() async {
    if (formKey.currentState!.validate()) {
      await _userAPIService.updateDetails(
          userToEdit: UserModel(address: addresscontroller.text),
          token: _userService.token!);
    }
    setBusy(true);
    if (image != null) {
      await _userAPIService.updateAvatar(
          image: image, token: _userService.token!);
    } else {
      print(image);
    }

    await _userAPIService
        .fethUserDetailsApi(token: _userService.token!)
        .then((value) {
      if (value != null) {
        _userService.updateUser(value);
      }
    });

    setBusy(false);
  }

  void changeProfilePick() {}
  Future<void> pickInGallary() async {
    try {
      image = await _picker.pickImage(source: ImageSource.gallery);

      print("image : $image");
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_userService];
}
