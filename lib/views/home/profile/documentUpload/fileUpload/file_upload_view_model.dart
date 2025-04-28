import 'dart:io';

import 'package:egczacademy/models/document_model.dart';
import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/document_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/shared/widget/dialog/setup_dialog_ui.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
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

  File? fileFront;
  File? fileBack;

  bool get disableFloat => fileFront == null || fileBack == null;

  void upload(DocumentTypeModel documentTypeModel) async {
    await uploadDoc(
        documentType: documentTypeModel,
        fileFront: fileFront,
        fileBack: fileBack);
  }

  upLoadViaCamera(DocumentTypeModel documentTypeModel, bool fromEditPage,
      int selectedCard) {
    _navigationService.navigateToView(CameraView(
      documentTypeModel: documentTypeModel,
      onSelect: (value) async {
        if (value != null) {
          if (fromEditPage) {
            if (selectedCard == 0) {
              _documentService.setFileFront(value);
            } else {
              _documentService.setFileBack(value);
            }
            _navigationService.back();
          } else {
            await uploadFile(documentTypeModel, value, selectedCard);
          }
        }
      },
    ));
  }

  Future uploadPDF(DocumentTypeModel documentTypeModel, bool fromEditPage,
      int selectedCard) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      if (selectedCard == 0) {
        _documentService.setFileFront(file);
      } else {
        _documentService.setFileBack(file);
      }
      debugPrint("FROMeditpage");
      if (fromEditPage) {
        _navigationService.back();
      } else {
        uploadFile(documentTypeModel, file, selectedCard);
      }
    } else {
      debugPrint("cancel");

      // User canceled the picker
    }
  }

  Future uploadFile(
      DocumentTypeModel documentTypeModel, File? file, int selectedCard) async {
    var upload = await _dialogService.showCustomDialog(
        variant: DialogType.upload, data: documentTypeModel);

    if (upload!.confirmed) {
      if (selectedCard == 0) {
        fileFront = file;
      } else {
        fileBack = file;
      }

      notifyListeners();
    }
  }

  Future uploadDoc(
      {File? fileFront,
      File? fileBack,
      required DocumentTypeModel documentType}) async {
    debugPrint("Upload doc");
    DocumentModel documents = DocumentModel(
        client_document_type_id: documentType.id,
        client_id: _userService.user!.id!,
        image_base64_front:
            fileFront != null ? convertToBase64(fileFront) : null,
        image_base64_back: fileBack != null ? convertToBase64(fileBack) : null,
        expiration: DateTime.now().add(const Duration(days: 30)).toString());

    await _documentAPIService
        .uploadDocument(token: _userService.token!, document: documents)
        .then((value) async => value
            ? await _documentService.fetch(
                documentAPIService: _documentAPIService,
                userService: _userService)
            : null);
  }
}
