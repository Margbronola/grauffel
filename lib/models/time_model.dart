import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_model.freezed.dart';
part 'time_model.g.dart';

@freezed
class TimeModel with _$TimeModel {
  const factory TimeModel(
      {String? time, int? avaiable, List<int>? avalable_slots}) = _TimeModel;

  factory TimeModel.fromJson(Map<String, Object?> json) =>
      _$TimeModelFromJson(json);
}
