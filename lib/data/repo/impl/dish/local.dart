import 'package:food_ordering/data/repo/local.dart';
import 'package:food_ordering/domain/entity/dish.dart';

class LocalDishRepo extends LocalRepo<Dish> {
  LocalDishRepo() : super("assets/json/domain/Dishes.json");

  @override
  Dish map(Map<String, dynamic> json) => Dish.fromJson(json);
}
