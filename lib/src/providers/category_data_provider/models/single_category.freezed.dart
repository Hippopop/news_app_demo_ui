// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleCategoryModel {
  String get title => throw _privateConstructorUsedError;
  String get imageLink => throw _privateConstructorUsedError;
  List<CategoryNewsModel> get newsList => throw _privateConstructorUsedError;

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleCategoryModelCopyWith<SingleCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCategoryModelCopyWith<$Res> {
  factory $SingleCategoryModelCopyWith(
          SingleCategoryModel value, $Res Function(SingleCategoryModel) then) =
      _$SingleCategoryModelCopyWithImpl<$Res, SingleCategoryModel>;
  @useResult
  $Res call({String title, String imageLink, List<CategoryNewsModel> newsList});
}

/// @nodoc
class _$SingleCategoryModelCopyWithImpl<$Res, $Val extends SingleCategoryModel>
    implements $SingleCategoryModelCopyWith<$Res> {
  _$SingleCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageLink = null,
    Object? newsList = null,
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
      newsList: null == newsList
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleCategoryModelImplCopyWith<$Res>
    implements $SingleCategoryModelCopyWith<$Res> {
  factory _$$SingleCategoryModelImplCopyWith(_$SingleCategoryModelImpl value,
          $Res Function(_$SingleCategoryModelImpl) then) =
      __$$SingleCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String imageLink, List<CategoryNewsModel> newsList});
}

/// @nodoc
class __$$SingleCategoryModelImplCopyWithImpl<$Res>
    extends _$SingleCategoryModelCopyWithImpl<$Res, _$SingleCategoryModelImpl>
    implements _$$SingleCategoryModelImplCopyWith<$Res> {
  __$$SingleCategoryModelImplCopyWithImpl(_$SingleCategoryModelImpl _value,
      $Res Function(_$SingleCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageLink = null,
    Object? newsList = null,
  }) {
    return _then(_$SingleCategoryModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      newsList: null == newsList
          ? _value._newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ));
  }
}

/// @nodoc

class _$SingleCategoryModelImpl
    with DiagnosticableTreeMixin
    implements _SingleCategoryModel {
  const _$SingleCategoryModelImpl(
      {required this.title,
      required this.imageLink,
      required final List<CategoryNewsModel> newsList})
      : _newsList = newsList;

  @override
  final String title;
  @override
  final String imageLink;
  final List<CategoryNewsModel> _newsList;
  @override
  List<CategoryNewsModel> get newsList {
    if (_newsList is EqualUnmodifiableListView) return _newsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SingleCategoryModel(title: $title, imageLink: $imageLink, newsList: $newsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SingleCategoryModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageLink', imageLink))
      ..add(DiagnosticsProperty('newsList', newsList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleCategoryModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            const DeepCollectionEquality().equals(other._newsList, _newsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, imageLink,
      const DeepCollectionEquality().hash(_newsList));

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleCategoryModelImplCopyWith<_$SingleCategoryModelImpl> get copyWith =>
      __$$SingleCategoryModelImplCopyWithImpl<_$SingleCategoryModelImpl>(
          this, _$identity);
}

abstract class _SingleCategoryModel implements SingleCategoryModel {
  const factory _SingleCategoryModel(
          {required final String title,
          required final String imageLink,
          required final List<CategoryNewsModel> newsList}) =
      _$SingleCategoryModelImpl;

  @override
  String get title;
  @override
  String get imageLink;
  @override
  List<CategoryNewsModel> get newsList;

  /// Create a copy of SingleCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleCategoryModelImplCopyWith<_$SingleCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
