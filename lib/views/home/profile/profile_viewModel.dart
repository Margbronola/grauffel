import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/models/document_model.dart';
import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/documentUpload/fileUpload/file_upload_view.dart';
import 'package:egczacademy/views/home/profile/experience/experience_edit_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../services/document_service.dart';
import 'edit/information_edit_view.dart';

class ProfileViewModel extends ReactiveViewModel {
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  final NavigationService _navigationService = locator<NavigationService>();
  final DocumentAPIService _documentAPIService = locator<DocumentAPIService>();
  final DocumentService _documentService = locator<DocumentService>();
  final ScrollController scrollController = ScrollController();
  UserModel? get user => _userService.user;

  List<DocumentTypeModel> get documentTypes =>
      _documentService.documenTypes ?? [];
  List<DocumentModel> get documents => _documentService.documents ?? [];
  bool documentLoader = false;

  String get userValidate => _userService.user!.verification! > 1
      ? "Compte non validé"
      : "Not Validated";

  bool isProcessing(int documentTypeId) {
    return documents.any((element) {
      print(element.client_document_type_id);
      return element.client_document_type_id == documentTypeId;
    });
  }

  bool isNew(int doctypeId) => documents.any((element) {
        if (element.client_document_type_id == doctypeId) {
          return documents
                  .firstWhere(
                      (element) => element.client_document_type_id == doctypeId)
                  .is_new ==
              1;
        }
        return false;
      });

  bool isValidated(int doctypeId) => documents.any((element) {
        if (element.client_document_type_id == doctypeId) {
          return documents
                  .firstWhere(
                      (element) => element.client_document_type_id == doctypeId)
                  .is_valid ==
              1;
        }
        return false;
      });

  bool isViewed(int doctypeId) => documents.any((element) {
        if (element.client_document_type_id == doctypeId) {
          return documents
                  .firstWhere(
                      (element) => element.client_document_type_id == doctypeId)
                  .is_viewed ==
              1;
        }
        return false;
      });

  String expirationDate(int doctypeId) {
    if (documents.any((element) {
      if (element.client_document_type_id == doctypeId) {
        return true;
      }
      return false;
    })) {
      return documents
          .firstWhere((element) => element.client_document_type_id == doctypeId)
          .expiration
          .toString();
    }
    return "";
  }

  Future init() async {
    documentLoader = true;
    notifyListeners();
    await _documentService.fetch(
        userService: _userService, documentAPIService: _documentAPIService);
    print(documents);
    documentLoader = false;
    notifyListeners();
  }

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

  void uploadDocument({required DocumentTypeModel documentTypeModel}) {
    _navigationService.navigateToView(FileUploadView(
      documentTypeModel: documentTypeModel,
    ));
  }
  //  _navigationService.navigateToView(DocumentUploadView(R
  //     documentTypeModel: documentTypeModel,
  //   ));

  void scrollDown() {
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
  List<ReactiveServiceMixin> get reactiveServices =>
      [_userService, _documentService];
}
