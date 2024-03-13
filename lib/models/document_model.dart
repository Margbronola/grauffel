// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import 'client_documents_types_model.dart';
part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel(
      {int? id,
      int? client_id,
      int? client_document_type_id,
      String? image_base64_front,
      String? image_base64_back,
      String? path,
      String? path2,
      String? expiration,
      DateTime? created_at,
      int? is_valid,
      int? is_new,
      int? is_viewed,
      ClientDocumentsTypesModel? client_document_types,
      DateTime? updated_at}) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, Object?> json) =>
      _$DocumentModelFromJson(json);
}
