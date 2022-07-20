import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/documentUpload/document_upload_view.dart';
import 'package:egczacademy/views/home/profile/experience/experience_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'edit/information_edit_view.dart';

class ProfileViewModel extends ReactiveViewModel {
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  final NavigationService _navigationService = locator<NavigationService>();
  final ScrollController scrollController = ScrollController();

  UserModel? get user => _userService.user;

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

  void editInformation() {
    _navigationService.navigateToView(const InformationEditView());
  }

  void editExperience() {
    _navigationService.navigateToView(const ExperienceEditView());
  }

  void uploadDocument() {
    _navigationService.navigateToView(const DocumentUploadView());
  }

  void scrollDown() {
    print("scroll");
    Future.delayed(const Duration(milliseconds: 300), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
      );
    });
    notifyListeners();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_userService];
}
