import 'package:chitrapat/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_model.freezed.dart';

@freezed
class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    required ThemeType themeType,
    required ThemeData themeData,
  }) = _ThemeModel;
}
