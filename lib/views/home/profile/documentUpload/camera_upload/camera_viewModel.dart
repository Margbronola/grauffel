import 'dart:io';
import 'package:egczacademy/app/global.dart';
import 'package:egczacademy/models/document_model.dart';
import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter_camera_overlay/model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../app/app.locator.dart';
import '../../../../../services/document_api_service.dart';
import '../../../../../services/document_service.dart';

class CameraViewModel extends BaseViewModel {
  final DocumentAPIService _documentAPIService = locator<DocumentAPIService>();
  final DocumentService _documentService = locator<DocumentService>();
  final UserService _userService = locator<UserService>();
  final NavigationService _navigationService = locator<NavigationService>();
  OverlayFormat format = OverlayFormat.cardID2;

  Future uploadDoc(
      {File? fileFront,
      File? fileBack,
      required DocumentTypeModel documentType}) async {
    print("Upload doc");
    DocumentModel documents = DocumentModel(
        client_document_type_id: documentType.id,
        client_id: _userService.user!.id!,
        image_base64_front:
            fileFront != null ? convertToBase64(fileFront) : null,
        image_base64_back: fileBack != null ? convertToBase64(fileBack) : null,
        expiration: DateTime.now().add(const Duration(days: 30)).toString());

    _navigationService.back();
    setBusy(true);
    await _documentAPIService
        .uploadDocument(token: _userService.token!, document: documents)
        .then((value) async => value
            ? await _documentService.fetch(
                documentAPIService: _documentAPIService,
                userService: _userService)
            : null);
    setBusy(false);
    _navigationService.back();
  }
}
