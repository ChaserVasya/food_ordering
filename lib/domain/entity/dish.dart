import 'package:food_ordering/domain/entity/interface/unique.dart';
import "package:json_annotation/json_annotation.dart";

import 'tag.dart';

part 'dish.g.dart';

@JsonSerializable()
class Dish extends Unique {
  @JsonKey(name: "category_id")
  final int categoryID;
  final String name;
  final String description;
  final String image;
  @JsonKey(name: "price_current")
  final int priceCurrent;
  @JsonKey(name: "price_old")
  final int? priceOld;
  final int measure;
  @JsonKey(name: "measure_unit")
  final String measureUnit;
  @JsonKey(name: "energy_per_100_grams")
  final double energyPer100Grams;
  @JsonKey(name: "proteins_per_100_grams")
  final double proteinsPer100Grams;
  @JsonKey(name: "fats_per_100_grams")
  final double fatsPer100Grams;
  @JsonKey(name: "carbohydrates_per_100_grams")
  final double carbohydratesPer100Grams;
  @JsonKey(name: "tag_ids", toJson: _tagsToJson, fromJson: _tagsFromJson)
  final List<DishTag> tags;

  const Dish({
    required super.id,
    required this.categoryID,
    required this.name,
    required this.description,
    required this.image,
    required this.priceCurrent,
    required this.priceOld,
    required this.measure,
    required this.measureUnit,
    required this.energyPer100Grams,
    required this.proteinsPer100Grams,
    required this.fatsPer100Grams,
    required this.carbohydratesPer100Grams,
    required this.tags,
  });

  Map<String, dynamic> toJson() => _$DishToJson(this);

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
}

List<DishTag> _tagsFromJson(List tagIDs) {
  return tagIDs.map((tagID) {
    switch (tagID) {
      case 1:
        return DishTag.novelty;
      case 2:
        return DishTag.vegan;
      case 3:
        return DishTag.best;
      case 4:
        return DishTag.hot;
      case 5:
        return DishTag.express;
      default:
        throw Exception();
    }
  }).toList();
}

List<int> _tagsToJson(List<DishTag> tags) {
  return tags.map((tag) {
    switch (tag) {
      case DishTag.novelty:
        return 1;
      case DishTag.vegan:
        return 2;
      case DishTag.best:
        return 3;
      case DishTag.hot:
        return 4;
      case DishTag.express:
        return 5;
    }
  }).toList();
}
