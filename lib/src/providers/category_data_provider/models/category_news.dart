import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_news.freezed.dart';

@freezed
class CategoryNewsModel with _$CategoryNewsModel {
  const factory CategoryNewsModel({
    required String title,
    required String imageLink,
  }) = _CategoryNewsModel;
}
