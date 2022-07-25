import 'package:food_ordering/data/repo/local.dart';
import 'package:food_ordering/domain/entity/category.dart';

class LocalCategoryRepo extends LocalRepo<Category> {
  LocalCategoryRepo() : super("assets/json/domain/Categories.json");

  @override
  Category map(Map<String, dynamic> json) => Category.fromJson(json);
}
