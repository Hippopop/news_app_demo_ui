import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinned_news_model.freezed.dart';

@freezed
class PinnedNewsModel with _$PinnedNewsModel {
  const factory PinnedNewsModel({
    required String title,
    required String imageLink,
  }) = _PinnedNewsModel;
}
