import 'dart:convert';
import 'package:egczacademy/models/document_model.dart';
import 'package:egczacademy/models/document_type_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';

class DocumentAPIService {
  Future<bool> uploadDocument(
      {required String token, required DocumentModel document}) async {
    DocumentModel docToUpload = DocumentModel(
        image_base64_front: document.image_base64_front,
        image_base64_back: document.image_base64_back,
        client_id: document.client_id,
        client_document_type_id: document.client_document_type_id);
    Map<String, dynamic> documentJson = docToUpload.toJson();
    documentJson.removeWhere((key, value) => value == null);
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/client/document"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      }, body: {
        "image_base64_front": document.image_base64_front,
        "client_id": document.client_id.toString(),
        "expiration": document.expiration,
        "client_document_type_id": document.client_document_type_id.toString()
      });
      if (respo.statusCode == 200 || respo.statusCode == 201) {
        var data = json.decode(respo.body);
        return true;
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("UPLOAD DOCS FAIL");
    }
    return false;
  }

  Future<List<DocumentModel>?> fetchDocuments({required String token}) async {
    try {
      final respo =
          await http.get(Uri.parse("$urlApi/client/document"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        print("FETCH DOCS PASS");
        var data = json.decode(respo.body);
        List ofData = data['data'];

        try {
          for (var datum in ofData) {
            print(datum);
          }

          return ofData.map((e) => DocumentModel.fromJson(e)).toList();
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH DOCS FAIL");
    }
    return null;
  }

  Future<List<DocumentTypeModel>?> fetchDocumentTypes(
      {required String token}) async {
    try {
      final respo =
          await http.get(Uri.parse("$urlApi/client/document-type"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        List data = json.decode(respo.body);

        print("FETCH DOCSTYPE PASS");

        try {
          print(data);
          return data.map((e) => DocumentTypeModel.fromJson(e)).toList();
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH DOCSTYPE FAIL");
    }
    return null;
  }
}
