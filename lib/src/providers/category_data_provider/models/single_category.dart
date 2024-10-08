import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_news.dart';

part 'single_category.freezed.dart';

@freezed
class SingleCategoryModel with _$SingleCategoryModel {
  const factory SingleCategoryModel({
    required String title,
    required String imageLink,
    required List<CategoryNewsModel> newsList,
  }) = _SingleCategoryModel;
}
