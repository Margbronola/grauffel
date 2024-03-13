// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_documents_types_model.freezed.dart';
part 'client_documents_types_model.g.dart';

@freezed
class ClientDocumentsTypesModel with _$ClientDocumentsTypesModel {
  const factory ClientDocumentsTypesModel({
    int? id,
    String? name,
    String? description,
    int? type,
    int? ismandatory,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _ClientDocumentsTypesModel;

  factory ClientDocumentsTypesModel.fromJson(Map<String, Object?> json) =>
      _$ClientDocumentsTypesModelFromJson(json);
}
