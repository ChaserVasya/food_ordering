import 'package:food_ordering/application/dto/dish_item_info/entity.dart';
import 'package:food_ordering/application/dto/dish_item_info/mapper.dart';
import 'package:food_ordering/domain/entity/dish.dart';
import 'package:food_ordering/domain/repo/base.dart';
import 'package:get_it/get_it.dart';

class DishItemInfoRepo {
  final _repo = GetIt.I.get<Repo<Dish>>();

  Future<List<DishItemInfo>> getAll() async {
    final dishes = await _repo.getAll();
    return dishes.map(DishMapper.toDishInfo).toList();
  }

  Future<DishItemInfo> get(int id) async {
    final dish = await _repo.get(id);
    return DishMapper.toDishInfo(dish);
  }
}
