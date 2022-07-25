import 'package:food_ordering/domain/entity/tag.dart';

class DishItemInfo {
  final int id;
  final String imagePath;
  final int price;
  final int? oldPrice;
  final String name;
  final List<DishTag> tags;
  final int mass;
  final String massUnit;

  DishItemInfo({
    required this.id,
    required this.mass,
    required this.massUnit,
    required this.tags,
    required this.imagePath,
    required this.price,
    required this.name,
    this.oldPrice,
  });
}
