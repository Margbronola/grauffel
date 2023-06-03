// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
class AdminModel with _$AdminModel {
  const factory AdminModel({
    int? id,
    String? first_name,
    String? last_name,
    String? email,
    int? iscoach,
    String? fullname,
  }) = _AdminModel;
  //pivot

  factory AdminModel.fromJson(Map<String, Object?> json) =>
      _$AdminModelFromJson(json);
}
