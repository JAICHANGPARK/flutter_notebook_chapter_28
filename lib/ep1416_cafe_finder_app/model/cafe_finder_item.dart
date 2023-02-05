import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafe_finder_item.freezed.dart';

@freezed
class CafeFinderItem with _$CafeFinderItem {
  factory CafeFinderItem({
    String? title,
  }) = _CafeFinderItem;
}
