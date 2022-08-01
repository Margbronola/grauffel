import 'package:egczacademy/services/document_api_service.dart';
import 'package:egczacademy/services/user_service.dart';
import 'package:stacked/stacked.dart';

import '../models/document_model.dart';
import '../models/document_type_model.dart';

class DocumentService with ReactiveServiceMixin {
  DocumentService() {
    //3
    listenToReactiveValues([_documents, _documenTypes]);
  }

  //2
  final ReactiveValue<List<DocumentModel>?> _documents =
      ReactiveValue<List<DocumentModel>?>(null);
  final ReactiveValue<List<DocumentTypeModel>?> _documenTypes =
      ReactiveValue<List<DocumentTypeModel>?>(null);

  List<DocumentModel>? get documents => _documents.value;
  List<DocumentTypeModel>? get documenTypes => _documenTypes.value;

  Future fetch(
      {required DocumentAPIService documentAPIService,
      required UserService userService}) async {
    _documenTypes.value =
        await documentAPIService.fetchDocumentTypes(token: userService.token!);
    _documents.value =
        await documentAPIService.fetchDocuments(token: userService.token!);
  }
}
