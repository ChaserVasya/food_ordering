import 'package:food_ordering/application/dto/dish_item_info/repo.dart';
import 'package:food_ordering/data/repo/impl/category/local.dart';
import 'package:food_ordering/data/repo/impl/dish/local.dart';
import 'package:food_ordering/domain/entity/category.dart';
import 'package:food_ordering/domain/entity/dish.dart';
import 'package:food_ordering/domain/repo/base.dart';
import 'package:get_it/get_it.dart';

void inject() {
  final getIt = GetIt.I;

  //Domain
  getIt.registerSingleton<Repo<Category>>(
    LocalCategoryRepo(),
  );
  getIt.registerSingleton<Repo<Dish>>(
    LocalDishRepo(),
  );

  //Application
  getIt.registerSingleton<DishItemInfoRepo>(
    DishItemInfoRepo(),
  );
}
