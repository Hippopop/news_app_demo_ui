// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsDataModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageLink => throw _privateConstructorUsedError;
  String get writerName => throw _privateConstructorUsedError;
  String get sourceName => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  bool get isDailyTopper => throw _privateConstructorUsedError;

  /// Create a copy of NewsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsDataModelCopyWith<NewsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDataModelCopyWith<$Res> {
  factory $NewsDataModelCopyWith(
          NewsDataModel value, $Res Function(NewsDataModel) then) =
      _$NewsDataModelCopyWithImpl<$Res, NewsDataModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      String imageLink,
      String writerName,
      String sourceName,
      DateTime publishedAt,
      bool isDailyTopper});
}

/// @nodoc
class _$NewsDataModelCopyWithImpl<$Res, $Val extends NewsDataModel>
    implements $NewsDataModelCopyWith<$Res> {
  _$NewsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? imageLink = null,
    Object? writerName = null,
    Object? sourceName = null,
    Object? publishedAt = null,
    Object? isDailyTopper = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      writerName: null == writerName
          ? _value.writerName
          : writerName // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDailyTopper: null == isDailyTopper
          ? _value.isDailyTopper
          : isDailyTopper // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDataModelImplCopyWith<$Res>
    implements $NewsDataModelCopyWith<$Res> {
  factory _$$NewsDataModelImplCopyWith(
          _$NewsDataModelImpl value, $Res Function(_$NewsDataModelImpl) then) =
      __$$NewsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String imageLink,
      String writerName,
      String sourceName,
      DateTime publishedAt,
      bool isDailyTopper});
}

/// @nodoc
class __$$NewsDataModelImplCopyWithImpl<$Res>
    extends _$NewsDataModelCopyWithImpl<$Res, _$NewsDataModelImpl>
    implements _$$NewsDataModelImplCopyWith<$Res> {
  __$$NewsDataModelImplCopyWithImpl(
      _$NewsDataModelImpl _value, $Res Function(_$NewsDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? imageLink = null,
    Object? writerName = null,
    Object? sourceName = null,
    Object? publishedAt = null,
    Object? isDailyTopper = null,
  }) {
    return _then(_$NewsDataModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      writerName: null == writerName
          ? _value.writerName
          : writerName // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDailyTopper: null == isDailyTopper
          ? _value.isDailyTopper
          : isDailyTopper // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewsDataModelImpl
    with DiagnosticableTreeMixin
    implements _NewsDataModel {
  const _$NewsDataModelImpl(
      {required this.title,
      required this.description,
      required this.imageLink,
      required this.writerName,
      required this.sourceName,
      required this.publishedAt,
      required this.isDailyTopper});

  @override
  final String title;
  @override
  final String description;
  @override
  final String imageLink;
  @override
  final String writerName;
  @override
  final String sourceName;
  @override
  final DateTime publishedAt;
  @override
  final bool isDailyTopper;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsDataModel(title: $title, description: $description, imageLink: $imageLink, writerName: $writerName, sourceName: $sourceName, publishedAt: $publishedAt, isDailyTopper: $isDailyTopper)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsDataModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('imageLink', imageLink))
      ..add(DiagnosticsProperty('writerName', writerName))
      ..add(DiagnosticsProperty('sourceName', sourceName))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('isDailyTopper', isDailyTopper));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDataModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.writerName, writerName) ||
                other.writerName == writerName) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isDailyTopper, isDailyTopper) ||
                other.isDailyTopper == isDailyTopper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, imageLink,
      writerName, sourceName, publishedAt, isDailyTopper);

  /// Create a copy of NewsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDataModelImplCopyWith<_$NewsDataModelImpl> get copyWith =>
      __$$NewsDataModelImplCopyWithImpl<_$NewsDataModelImpl>(this, _$identity);
}

abstract class _NewsDataModel implements NewsDataModel {
  const factory _NewsDataModel(
      {required final String title,
      required final String description,
      required final String imageLink,
      required final String writerName,
      required final String sourceName,
      required final DateTime publishedAt,
      required final bool isDailyTopper}) = _$NewsDataModelImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  String get imageLink;
  @override
  String get writerName;
  @override
  String get sourceName;
  @override
  DateTime get publishedAt;
  @override
  bool get isDailyTopper;

  /// Create a copy of NewsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsDataModelImplCopyWith<_$NewsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
