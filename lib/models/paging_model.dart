import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_model.freezed.dart';

@freezed
class PagingModel with _$PagingModel {
  const factory PagingModel(
      {int? current_page,
      String? first_page_url,
      String? next_page_url,
      String? prev_page_url,
      int? total}) = _PagingModel;
}
