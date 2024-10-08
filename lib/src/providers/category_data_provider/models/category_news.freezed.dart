// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryNewsModel {
  String get title => throw _privateConstructorUsedError;
  String get imageLink => throw _privateConstructorUsedError;

  /// Create a copy of CategoryNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryNewsModelCopyWith<CategoryNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryNewsModelCopyWith<$Res> {
  factory $CategoryNewsModelCopyWith(
          CategoryNewsModel value, $Res Function(CategoryNewsModel) then) =
      _$CategoryNewsModelCopyWithImpl<$Res, CategoryNewsModel>;
  @useResult
  $Res call({String title, String imageLink});
}

/// @nodoc
class _$CategoryNewsModelCopyWithImpl<$Res, $Val extends CategoryNewsModel>
    implements $CategoryNewsModelCopyWith<$Res> {
  _$CategoryNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageLink = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryNewsModelImplCopyWith<$Res>
    implements $CategoryNewsModelCopyWith<$Res> {
  factory _$$CategoryNewsModelImplCopyWith(_$CategoryNewsModelImpl value,
          $Res Function(_$CategoryNewsModelImpl) then) =
      __$$CategoryNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageLink});
}

/// @nodoc
class __$$CategoryNewsModelImplCopyWithImpl<$Res>
    extends _$CategoryNewsModelCopyWithImpl<$Res, _$CategoryNewsModelImpl>
    implements _$$CategoryNewsModelImplCopyWith<$Res> {
  __$$CategoryNewsModelImplCopyWithImpl(_$CategoryNewsModelImpl _value,
      $Res Function(_$CategoryNewsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageLink = null,
  }) {
    return _then(_$CategoryNewsModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryNewsModelImpl
    with DiagnosticableTreeMixin
    implements _CategoryNewsModel {
  const _$CategoryNewsModelImpl({required this.title, required this.imageLink});

  @override
  final String title;
  @override
  final String imageLink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryNewsModel(title: $title, imageLink: $imageLink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryNewsModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageLink', imageLink));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryNewsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, imageLink);

  /// Create a copy of CategoryNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryNewsModelImplCopyWith<_$CategoryNewsModelImpl> get copyWith =>
      __$$CategoryNewsModelImplCopyWithImpl<_$CategoryNewsModelImpl>(
          this, _$identity);
}

abstract class _CategoryNewsModel implements CategoryNewsModel {
  const factory _CategoryNewsModel(
      {required final String title,
      required final String imageLink}) = _$CategoryNewsModelImpl;

  @override
  String get title;
  @override
  String get imageLink;

  /// Create a copy of CategoryNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryNewsModelImplCopyWith<_$CategoryNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
