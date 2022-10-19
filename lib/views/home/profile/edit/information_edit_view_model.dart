import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/models/gunModel/country_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/countries_service.dart';
import 'package:egczacademy/services/user_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../shared/widget/custom_picker.dart';

class InformationEditViewModel extends ReactiveViewModel {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  final NavigationService _navigationService = locator<NavigationService>();
  final CountriesService _countriesService = locator<CountriesService>();
  XFile? image;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController villeController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode dateNode = FocusNode();
  FocusNode phoneNode = FocusNode();
  FocusNode addressNode = FocusNode();
  FocusNode codeNode = FocusNode();
  FocusNode villeNode = FocusNode();
  FocusNode firstNameNode = FocusNode();
  FocusNode lastNameNode = FocusNode();
  FocusNode countryNode = FocusNode();

  bool isEmailFucos = false;
  bool isDateFucos = false;
  bool isNumberFucos = false;
  bool isAddressFucos = false;
  bool isPostalFucos = false;
  bool isVilleFucos = false;
  bool isfirstNameFucos = false;
  bool islastNameFucos = false;
  bool iscountryFucos = false;
  List<CountryModel>? countries;
  CountryModel? country;
  int country_id = 0;
  void init() async {
    if (user != null) {
      emailController.text = user!.email!;
      birthdayController.text = user!.birthday!.isEmpty
          ? ""
          : dateFormat(DateTime.parse(user!.birthday!));
      phoneController.text = user!.phone_number.toString();
      codeController.text = user!.zipcode.toString();
      addresscontroller.text = user!.address!;
      firstNameController.text = user!.first_name!.toString();
      lastNameController.text = user!.last_name!.toString();
      countryController.text = user!.country!.name!.toString();
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
    villeNode.addListener(() {
      isfirstNameFucos = firstNameNode.hasFocus;
      notifyListeners();
    });
    villeNode.addListener(() {
      islastNameFucos = lastNameNode.hasFocus;
      notifyListeners();
    });
    villeNode.addListener(() {
      iscountryFucos = countryNode.hasFocus;
      notifyListeners();
    });

    country_id = user!.country_id!;
    country = user!.country;
    countries =
        await _countriesService.fetchCountries(token: _userService.token!);
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
    firstNameController.dispose();
    lastNameController.dispose();
    countryController.dispose();

    dateNode.dispose();
    phoneNode.dispose();
    addressNode.dispose();
    codeNode.dispose();
    villeNode.dispose();
    firstNameNode.dispose();
    lastNameNode.dispose();
    countryNode.dispose();
    super.dispose();
  }

  UserModel? get user => _userService.user!;
  void save() async {
    if (formKey.currentState!.validate()) {
      debugPrint("validate");
      setBusy(true);

      print(birthdayController.text);

      birthdayController.text = birthdayController.text.replaceAll("-", "/");
      String? birthday =
          "${birthdayController.text.split("/")[2]}-${birthdayController.text.split("/")[1].length == 1 ? "0${birthdayController.text.split("/")[1]}" : birthdayController.text.split("/")[1]}-${birthdayController.text.split("/")[0]}";

      bool update = await _userAPIService.updateDetails(
          userToEdit: UserModel(
            email: emailController.text,
            address: addresscontroller.text,
            city: villeController.text,
            phone_number: phoneController.text,
            birthday: birthday,
            zipcode: codeController.text,
            first_name: firstNameController.text,
            last_name: lastNameController.text,
            country_id: country_id,
          ),
          token: _userService.token!);

      if (image != null) {
        await _userAPIService.updateAvatar(
            image: image, token: _userService.token!);
      }
      if (update) {
        await updateSuccess();
      }

      setBusy(false);

      _navigationService.back();
    } else {
      debugPrint("cant valiedate");
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

      debugPrint("image : $image");
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  void showDatePicker2(context) async {
    debugPrint("Show date picker");
    await DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      locale: LocaleType.fr,
      currentTime: DateTime(
        int.parse(user!.birthday!.split("-")[0]),
        int.parse(user!.birthday!.split("-")[1]),
        int.parse(user!.birthday!.split("-")[2]),
      ),
      minTime: DateTime(1990, 1, 1),
      maxTime: DateTime(2022, 1, 1),
      theme: const DatePickerTheme(
          // headerColor: Colors.orange,
          // backgroundColor: Colors.blue,
          itemStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          doneStyle: TextStyle(color: Colors.black, fontSize: 16)),
      onChanged: (date) {
        debugPrint('change $date in time zone ${date.timeZoneOffset.inHours}');
      },
      onConfirm: (date) {
        birthdayController.text = "${date.day}-${date.month}-${date.year}";
        notifyListeners();
      },
      onCancel: () {
        debugPrint("cancel");
        dateNode.nextFocus();
        notifyListeners();
      },
    );
  }

  void showDatePicker(context) async {
    debugPrint("Show date picker");
    await DatePicker.showPicker(
      context,
      showTitleActions: true,
      locale: LocaleType.fr,
      pickerModel: CustomPicker(
        currentTime: DateTime(
          int.parse(user!.birthday!.split("-")[0]),
          int.parse(user!.birthday!.split("-")[1]),
          int.parse(user!.birthday!.split("-")[2]),
        ),
        // minTime: DateTime(1990, 1, 1),
        // maxTime: DateTime(2022, 1, 1),
      ),
      theme: const DatePickerTheme(
          // headerColor: Colors.orange,
          // backgroundColor: Colors.blue,
          itemStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          doneStyle: TextStyle(color: Colors.black, fontSize: 16)),
      onChanged: (date) {
        debugPrint('change $date in time zone ${date.timeZoneOffset.inHours}');
      },
      onConfirm: (date) {
        dateNode.nextFocus();
        birthdayController.text = "${date.day}-${date.month}-${date.year}";
        notifyListeners();
      },
      onCancel: () {
        debugPrint("cancel");
        dateNode.nextFocus();
        notifyListeners();
      },
    );
  }

  void countrySelect(int index) {
    countryController.text = countries![index].name!;
    country_id = countries![index].id!;
    country = countries![index];
    notifyListeners();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_userService];
}
