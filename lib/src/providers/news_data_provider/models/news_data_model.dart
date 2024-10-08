import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_data_model.freezed.dart';

@freezed
class NewsDataModel with _$NewsDataModel {
  const factory NewsDataModel({
    required String title,
    required String description,
    required String imageLink,
    required String writerName,
    required String sourceName,
    required DateTime publishedAt,
    required bool isDailyTopper,
  }) = _NewsDataModel;
}
