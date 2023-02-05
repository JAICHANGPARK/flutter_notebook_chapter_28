import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class CafeFinderItem with _$CafeFinderItem {
  factory CafeFinderItem({
    String? title,
  }) = _CafeFinderItem;
}
