// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cafe_finder_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CafeFinderItem {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  bool? get isSale => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafeFinderItemCopyWith<CafeFinderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeFinderItemCopyWith<$Res> {
  factory $CafeFinderItemCopyWith(
          CafeFinderItem value, $Res Function(CafeFinderItem) then) =
      _$CafeFinderItemCopyWithImpl<$Res, CafeFinderItem>;
  @useResult
  $Res call(
      {String? title,
      String? subtitle,
      double? rate,
      String? review,
      bool? isSale,
      double? distance,
      String? img});
}

/// @nodoc
class _$CafeFinderItemCopyWithImpl<$Res, $Val extends CafeFinderItem>
    implements $CafeFinderItemCopyWith<$Res> {
  _$CafeFinderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? rate = freezed,
    Object? review = freezed,
    Object? isSale = freezed,
    Object? distance = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isSale: freezed == isSale
          ? _value.isSale
          : isSale // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CafeFinderItemCopyWith<$Res>
    implements $CafeFinderItemCopyWith<$Res> {
  factory _$$_CafeFinderItemCopyWith(
          _$_CafeFinderItem value, $Res Function(_$_CafeFinderItem) then) =
      __$$_CafeFinderItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? subtitle,
      double? rate,
      String? review,
      bool? isSale,
      double? distance,
      String? img});
}

/// @nodoc
class __$$_CafeFinderItemCopyWithImpl<$Res>
    extends _$CafeFinderItemCopyWithImpl<$Res, _$_CafeFinderItem>
    implements _$$_CafeFinderItemCopyWith<$Res> {
  __$$_CafeFinderItemCopyWithImpl(
      _$_CafeFinderItem _value, $Res Function(_$_CafeFinderItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? rate = freezed,
    Object? review = freezed,
    Object? isSale = freezed,
    Object? distance = freezed,
    Object? img = freezed,
  }) {
    return _then(_$_CafeFinderItem(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isSale: freezed == isSale
          ? _value.isSale
          : isSale // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CafeFinderItem implements _CafeFinderItem {
  _$_CafeFinderItem(
      {this.title,
      this.subtitle,
      this.rate,
      this.review,
      this.isSale,
      this.distance,
      this.img});

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final double? rate;
  @override
  final String? review;
  @override
  final bool? isSale;
  @override
  final double? distance;
  @override
  final String? img;

  @override
  String toString() {
    return 'CafeFinderItem(title: $title, subtitle: $subtitle, rate: $rate, review: $review, isSale: $isSale, distance: $distance, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafeFinderItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.isSale, isSale) || other.isSale == isSale) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, subtitle, rate, review, isSale, distance, img);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafeFinderItemCopyWith<_$_CafeFinderItem> get copyWith =>
      __$$_CafeFinderItemCopyWithImpl<_$_CafeFinderItem>(this, _$identity);
}

abstract class _CafeFinderItem implements CafeFinderItem {
  factory _CafeFinderItem(
      {final String? title,
      final String? subtitle,
      final double? rate,
      final String? review,
      final bool? isSale,
      final double? distance,
      final String? img}) = _$_CafeFinderItem;

  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  double? get rate;
  @override
  String? get review;
  @override
  bool? get isSale;
  @override
  double? get distance;
  @override
  String? get img;
  @override
  @JsonKey(ignore: true)
  _$$_CafeFinderItemCopyWith<_$_CafeFinderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
