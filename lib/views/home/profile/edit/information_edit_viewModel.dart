import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/user_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InformationEditViewModel extends ReactiveViewModel {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  final NavigationService _navigationService = locator<NavigationService>();
  XFile? image;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController villeController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

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

  String MIN_DATETIME = '2019-05-15 20:10:55';
  String MAX_DATETIME = '2019-07-01 12:30:40';
  String INIT_DATETIME = '2019-05-16 09:00:58';
  String DATE_FORMAT = 'd-MM-yyyy';

  String dateFormat(DateTime date) {
    // final DateFormat formatter = DateFormat('MMMM');

    final String formatted = birthdayController.text = user!.birthday!.isEmpty
        ? ""
        : "${date.day}/${date.month.toString().length == 1 ? "0${date.month.toString()}" : date.month.toString()}/${date.year}";
    return formatted;
  }

  void init() {
    print(user!.birthday!);
    if (user != null) {
      emailController.text = user!.email!;
      birthdayController.text = user!.birthday!.isEmpty
          ? ""
          : '${user!.birthday!.split("-")[0]}/${user!.birthday!.split("-")[1].length == 1 ? "0${user!.birthday!.split("-")[1]}" : user!.birthday!.split("-")[1]}/${user!.birthday!.split("-")[2]}';
      phoneController.text = user!.phone_number.toString();
      codeController.text = user!.zipcode.toString();
      addresscontroller.text = user!.address!;
      villeController.text = user!.city!.toString();
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

    addressNode.addListener(() {
      isPostalFucos = codeNode.hasFocus;
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
    birthdayController.dispose();
    emailFocusNode.dispose();
    phoneController.dispose();
    addresscontroller.dispose();
    codeController.dispose();
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
    print(
        UserModel(address: addresscontroller.text, city: villeController.text));
    if (formKey.currentState!.validate()) {
      print("validate");
      setBusy(true);
      await _userAPIService.updateDetails(
          userToEdit: UserModel(
            address: addresscontroller.text,
            city: villeController.text,
            phone_number: phoneController.text,
            email: emailController.text,
            birthday: birthdayController.text,
            zipcode: codeController.text,
          ),
          token: _userService.token!);

      if (image != null) {
        await _userAPIService.updateAvatar(
            image: image, token: _userService.token!);
      }

      await updateSuccess();
      setBusy(false);

      _navigationService.back();
    } else {
      print("cant valiedate");
    }
  }

  Future updateSuccess() async {
    await _userAPIService
        .fethUserDetailsApi(token: _userService.token!)
        .then((value) {
      if (value != null) {
        _userService.updateUser(value);
      }
    });
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

  void showDatePicker(context) {
    DatePicker.showDatePicker(context,
            showTitleActions: true,
            minTime: DateTime(1990, 1, 1),
            maxTime: DateTime(2022, 1, 1),
            theme: const DatePickerTheme(
                headerColor: Colors.orange,
                backgroundColor: Colors.blue,
                itemStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
            onChanged: (date) {
      print('change $date in time zone ${date.timeZoneOffset.inHours}');
    }, onConfirm: (date) {
      print('confirm $date');
    }, currentTime: DateTime.now(), locale: LocaleType.en)
        .whenComplete(() => dateNode.unfocus());
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_userService];
}
