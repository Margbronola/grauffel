import 'package:egczacademy/app/app.locator.dart';
import 'package:egczacademy/app/components/enum.dart';
import 'package:egczacademy/models/document_model.dart';
import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/models/user_model.dart';
import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:egczacademy/views/home/profile/documentUpload/document_upload_view.dart';
import 'package:egczacademy/views/home/profile/documentUpload/fileUpload/file_upload_view.dart';
import 'package:egczacademy/views/home/profile/experience/experience_edit_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.router.dart';
import '../../../services/authentication_service.dart';
import '../../../services/document_service.dart';
import '../../../services/firebase_auth_service.dart';
import '../../../services/sharedpref_service.dart';
import 'edit/information_edit_view.dart';
import 'package:animate_icons/animate_icons.dart';
import 'dart:math';

class ProfileViewModel extends ReactiveViewModel {
  final UserService _userService = locator<UserService>();
  final ImagePicker _picker = ImagePicker();
  final NavigationService _navigationService = locator<NavigationService>();
  final DocumentAPIService _documentAPIService = locator<DocumentAPIService>();
  final DocumentService _documentService = locator<DocumentService>();
  final ScrollController scrollController = ScrollController();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final FireBaseAuthService _fireBaseAuthService =
      locator<FireBaseAuthService>();
  final SharedPrefService _sharedPrefService = locator<SharedPrefService>();
  UserModel? get user => _userService.user;

  late ExpandedTileController expanTileController1;
  late ExpandedTileController expanTileController2;
  late ExpandedTileController expanTileController3;
  late ExpandedTileController expanTileController4;

  AnimateIconController animatedIconController = AnimateIconController();

  List<DocumentModel> get documents => _documentService.documents ?? [];
  bool documentLoader = false;

  String get userValidate =>
      _userService.user?.verification == 1 ? "Vérifié" : "Compte non validé";

  double angle1 = 0;
  double angle2 = 0;
  double angle3 = 0;
  double angle4 = 0;

  List<double> angles = [];

  void ontapInfo(int index) {
    if (angles[index] == 90 * pi / 180) {
      angles[index] = 0;
    } else {
      angles[index] = 90 * pi / 180;
    }

    if (index != 0) {
      expanTileController1.collapse();
      angles[0] = 0;
    }
    if (index != 1) {
      expanTileController2.collapse();
      angles[1] = 0;
    }
    if (index != 2) {
      expanTileController3.collapse();
      angles[2] = 0;
    }
    if (index != 3) {
      expanTileController4.collapse();
      angles[3] = 0;
    }
    notifyListeners();
  }

  List<DocumentTypeModel> get mandatoryDocumentTypes =>
      _documentService.mandatoryDocumentTypes();

  List<DocumentTypeModel> get documentTypes =>
      _documentService.notMandatoryDocumentTypes();

  int get numUploadedDoc => _documentService.mandatoryNumberUploaded() ?? 0;

  String dateFormat(DateTime date) {
    final String formatted =
        "${date.day}/${date.month.toString().length == 1 ? "0${date.month.toString()}" : date.month.toString()}/${date.year}";
    return formatted;
  }

  bool isProcessing(int documentTypeId) {
    return documents.any((element) {
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

  bool status(int doctypeId) => documents.any((element) {
        if (element.client_document_type_id == doctypeId) {
          return documents
                  .firstWhere(
                      (element) => element.client_document_type_id == doctypeId)
                  .status ==
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

  Future init({required bool isFromHome}) async {
    documentLoader = true;
    expanTileController1 = ExpandedTileController(isExpanded: false);
    expanTileController2 = ExpandedTileController(isExpanded: false);
    expanTileController3 = ExpandedTileController(isExpanded: false);
    expanTileController4 = ExpandedTileController(isExpanded: false);

    autoOpenDocs(isFromHome: isFromHome); //auto open docs
    print("USER");
    print(user);

    angles = [angle1, angle2, angle3, angle4];

    await _documentService.fetch(
        userService: _userService, documentAPIService: _documentAPIService);

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
    _navigationService.navigateToView(const ExperienceEditView(
      extraDetails: ExtraDetails.experience,
    ));
  }

  void editEquipments() {
    _navigationService.navigateToView(
        const ExperienceEditView(extraDetails: ExtraDetails.equipments));
  }

  void uploadDocument({required DocumentTypeModel documentTypeModel}) {
    _navigationService.navigateToView(FileUploadView(
      documentTypeModel: documentTypeModel,
    ));
  }

  void editDocuments({required DocumentTypeModel documentTypeModel}) {
    _navigationService.navigateToView(DocumentUploadView(
      documentTypeModel: documentTypeModel,
    ));
  }

  void autoOpenDocs({bool isFromHome = false}) {
    if (isFromHome) {
      angle4 = 90 * pi / 180;
      expanTileController4 = ExpandedTileController(isExpanded: true);
    }
  }

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

  void signOut() async {
    try {
      String? token;
      try {
        FirebaseMessaging messaging = FirebaseMessaging.instance;
        token = await messaging.getToken() ?? "";
      } catch (e) {
        token = "";
      }
      print("signout firebase");
      setBusy(true);
      print(_userService.token);
      await _fireBaseAuthService.logout();
      await _authenticationService.logout(
        token: _sharedPrefService.prefsToken,
        fcm_token: token,
      );
      _sharedPrefService.clearAllPrefs();

      _navigationService
          .pushNamedAndRemoveUntil(Routes.welcomeView)!
          .whenComplete(() => setBusy(false));
    } catch (e) {
      print("ERROR LOGOUT: $e");
      return;
    }
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices =>
      [_userService, _documentService];
}
