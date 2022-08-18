import 'dart:io';

import 'package:egczacademy/models/document_model.dart';
import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/document_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/shared/widget/dialog/setup_dialog_ui.dart';
import 'package:file_picker/file_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../app/app.locator.dart';
import '../../../../../app/global.dart';
import '../../../../../models/document_type_model.dart';
import '../camera_upload/camera_view.dart';

class FileUploadViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final DialogService _dialogService = locator<DialogService>();
  final UserService _userService = locator<UserService>();
  final DocumentAPIService _documentAPIService = locator<DocumentAPIService>();
  final DocumentService _documentService = locator<DocumentService>();

  upLoadViaCamera(DocumentTypeModel documentTypeModel) {
    _navigationService.navigateToView(CameraView(
      documentTypeModel: documentTypeModel,
      onSelect: (value) async {
        if (value != null) {
          await uploadFile(documentTypeModel, value);
        }
      },
    ));
  }

  Future uploadPDF(
    DocumentTypeModel documentTypeModel,
  ) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      uploadFile(documentTypeModel, file);
    } else {
      print("cancel");
      // User canceled the picker
    }
  }

  Future uploadFile(DocumentTypeModel documentTypeModel, File? file) async {
    var upload = await _dialogService.showCustomDialog(
        variant: DialogType.upload, data: documentTypeModel);

    if (upload!.confirmed) {
      await uploadDoc(documentType: documentTypeModel, fileFront: file);
    }
  }

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

    print(documents);

    await _documentAPIService
        .uploadDocument(token: _userService.token!, document: documents)
        .then((value) async => value
            ? await _documentService.fetch(
                documentAPIService: _documentAPIService,
                userService: _userService)
            : null);
  }
}
