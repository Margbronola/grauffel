import 'package:freezed_annotation/freezed_annotation.dart';
part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    int? id,
    String? name,
    //type
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, Object?> json) =>
      _$CountryModelFromJson(json);
}
