import 'package:json_annotation/json_annotation.dart';

import 'interface/unique.dart';

part "category.g.dart";

@JsonSerializable()
class Category extends Unique {
  final String name;

  Category({
    required super.id,
    required this.name,
  });

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
