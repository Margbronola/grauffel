import 'package:egczacademy/app/components/enum.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../models/user_model.dart';
import '../../../../services/user_api_service.dart';
import '../../../../services/user_service.dart';

class ExperienceEditViewModel extends BaseViewModel {
  final UserAPIService _userAPIService = locator<UserAPIService>();
  final UserService _userService = locator<UserService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController textController = TextEditingController();
  FocusNode textNode = FocusNode();

  void init(ExtraDetails details) {
    if (details == ExtraDetails.experience) {
      if (_userService.user?.experience != null) {
        textController.text = _userService.user!.experience!;
      } else {
        textController.text =
            "Merci de partager avec nous vos expériences au niveau de notre sport";
      }
    } else {
      if (_userService.user?.equipment != null) {
        textController.text = _userService.user!.equipment!;
      } else {
        textController.text =
            "Merci de partager avec nous les équipements que vous possédez";
      }
    }
  }

  void save(ExtraDetails details) async {
    if (formKey.currentState!.validate()) {
      setBusy(true);
      await _userAPIService.updateDetails(
          userToEdit: details == ExtraDetails.experience
              ? UserModel(
                  experience: textController.text,
                  email: _userService.user!.email)
              : UserModel(
                  equipment: textController.text,
                  email: _userService.user!.email),
          token: _userService.token!);

      await updateSuccess();
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
}
