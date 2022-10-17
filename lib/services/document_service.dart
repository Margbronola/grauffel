import 'dart:io';

import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../models/document_model.dart';
import '../models/document_type_model.dart';

class DocumentService with ReactiveServiceMixin {
  DocumentService() {
    //3
    listenToReactiveValues([_documents, _documenTypes, _fileFront, _fileBack]);
  }

  final ReactiveValue<File?> _fileFront = ReactiveValue<File?>(null);
  final ReactiveValue<File?> _fileBack = ReactiveValue<File?>(null);

  //2
  final ReactiveValue<List<DocumentModel>?> _documents =
      ReactiveValue<List<DocumentModel>?>(null);
  final ReactiveValue<List<DocumentTypeModel>?> _documenTypes =
      ReactiveValue<List<DocumentTypeModel>?>(null);

  File? get fileFront => _fileFront.value;
  File? get fileBack => _fileBack.value;

  List<DocumentModel>? get documents => _documents.value;
  List<DocumentTypeModel> get documenTypes => _documenTypes.value ?? [];

  setFileFront(File file) {
    _fileFront.value = file;
  }

  setFileBack(File file) {
    _fileBack.value = file;
  }

  Future fetch(
      {required DocumentAPIService documentAPIService,
      required UserService userService}) async {
    _documenTypes.value =
        await documentAPIService.fetchDocumentTypes(token: userService.token!);
    _documents.value =
        await documentAPIService.fetchDocuments(token: userService.token!);
    debugPrint("here");
    debugPrint("$documents");
  }

  List<DocumentTypeModel> mandatoryDocumentTypes() {
    return documenTypes.where((element) => element.ismandatory == 1).toList();
  }

  List<DocumentTypeModel> notMandatoryDocumentTypes() {
    var docs = documenTypes.where((e) => e.ismandatory != 1).toList();

    return docs;
  }

  int? mandatoryNumberUploaded() {
    int num = 0;
    if (documents == null) return num;
    for (DocumentTypeModel doc in mandatoryDocumentTypes()) {
      if (documents!
          .any((element) => element.client_document_type_id == doc.id)) {
        num++;
      }
    }

    return num;
  }
}
