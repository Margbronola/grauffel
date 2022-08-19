import 'dart:io';

import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../app/global.dart';
import '../../../../models/document_model.dart';
import '../../../../services/document_service.dart';
import 'fileUpload/file_upload_view.dart';

class DocumentUploadViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final DocumentService _documentService = locator<DocumentService>();
  final UserService _userService = locator<UserService>();
  final DocumentAPIService _documentAPIService = locator<DocumentAPIService>();

  File? file;

  void uploadDocument({required DocumentTypeModel documentTypeModel}) {
    _navigationService
        .navigateToView(FileUploadView(
      documentTypeModel: documentTypeModel,
      fromEditPage: true,
    ))!
        .then((value) {
      file = _documentService.file;
      notifyListeners();
    });
  }

  Future uploadDoc(
      {File? fileFront,
      File? fileBack,
      required DocumentTypeModel documentType}) async {
    setBusy(true);
    print("Upload doc");
    DocumentModel documents = DocumentModel(
        client_document_type_id: documentType.id,
        client_id: _userService.user!.id!,
        image_base64_front:
            fileFront != null ? convertToBase64(fileFront) : null,
        image_base64_back: fileBack != null ? convertToBase64(fileBack) : null,
        expiration: DateTime.now().add(const Duration(days: 30)).toString());

    print(documents);

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
