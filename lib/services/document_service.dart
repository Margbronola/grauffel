import 'dart:io';

import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';

import '../models/document_model.dart';
import '../models/document_type_model.dart';

class DocumentService with ReactiveServiceMixin {
  DocumentService() {
    //3
    listenToReactiveValues([_documents, _documenTypes, _file]);
  }

  final ReactiveValue<File?> _file = ReactiveValue<File?>(null);

  //2
  final ReactiveValue<List<DocumentModel>?> _documents =
      ReactiveValue<List<DocumentModel>?>(null);
  final ReactiveValue<List<DocumentTypeModel>?> _documenTypes =
      ReactiveValue<List<DocumentTypeModel>?>(null);

  File? get file => _file.value;
  List<DocumentModel>? get documents => _documents.value;
  List<DocumentTypeModel> get documenTypes => _documenTypes.value ?? [];

  setFile(File file) {
    _file.value = file;
  }

  Future fetch(
      {required DocumentAPIService documentAPIService,
      required UserService userService}) async {
    _documenTypes.value =
        await documentAPIService.fetchDocumentTypes(token: userService.token!);
    _documents.value =
        await documentAPIService.fetchDocuments(token: userService.token!);
    print("here");
    print(documents);
  }

  List<DocumentTypeModel> mandatoryDocumentTypes() {
    return documenTypes.where((element) => element.ismandatory == 1).toList();
  }

  List<DocumentTypeModel> notMandatoryDocumentTypes() {
    return documenTypes.where((e) => e.ismandatory != 1).toList();
  }

  int mandatoryNumberUploaded() {
    int num = 0;
    for (var x in mandatoryDocumentTypes()) {
      if (documents!
          .any((element) => element.client_document_type_id == x.id)) {
        num++;
      }
    }

    return num;
  }
}
