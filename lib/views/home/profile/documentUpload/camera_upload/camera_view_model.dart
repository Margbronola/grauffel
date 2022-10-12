import 'dart:io';
import 'package:egczacademy/models/document_type_model.dart';
import 'package:flutter_camera_overlay/model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../app/app.locator.dart';

class CameraViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  OverlayFormat format = OverlayFormat.cardID2;

  Future<File?> selectDocument(
      {File? fileFront,
      File? fileBack,
      required DocumentTypeModel documentType}) async {
    setBusy(true);

    _navigationService.back();
    _navigationService.back();

    setBusy(false);
    return fileFront;
  }
}
