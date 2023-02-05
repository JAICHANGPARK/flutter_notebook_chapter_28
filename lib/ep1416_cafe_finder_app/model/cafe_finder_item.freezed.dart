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
  $Res call({String? title});
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
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? title});
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
  }) {
    return _then(_$_CafeFinderItem(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CafeFinderItem implements _CafeFinderItem {
  _$_CafeFinderItem({this.title});

  @override
  final String? title;

  @override
  String toString() {
    return 'CafeFinderItem(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafeFinderItem &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafeFinderItemCopyWith<_$_CafeFinderItem> get copyWith =>
      __$$_CafeFinderItemCopyWithImpl<_$_CafeFinderItem>(this, _$identity);
}

abstract class _CafeFinderItem implements CafeFinderItem {
  factory _CafeFinderItem({final String? title}) = _$_CafeFinderItem;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_CafeFinderItemCopyWith<_$_CafeFinderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
