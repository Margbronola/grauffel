import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_type_model.freezed.dart';
part 'document_type_model.g.dart';

@freezed
class DocumentTypeModel with _$DocumentTypeModel {
  const factory DocumentTypeModel(
      {int? id,
      String? name,
      String? description,
      int? type,
      int? ismandatory,
      DateTime? created_at,
      DateTime? updated_at}) = _DocumentTypeModel;

  factory DocumentTypeModel.fromJson(Map<String, Object?> json) =>
      _$DocumentTypeModelFromJson(json);
}
