import 'package:food_ordering/application/dto/dish_item_info/entity.dart';
import 'package:food_ordering/application/dto/dish_item_info/repo.dart';
import 'package:food_ordering/presentation/view_model/awaiter.dart';
import 'package:get_it/get_it.dart';

class DishViewModel extends AwaitingCubit {
  DishViewModel() {
    fetch();
  }

  final _repo = GetIt.I.get<DishItemInfoRepo>();

  late final List<DishItemInfo> dishes;

  Future<void> fetch() async {
    dishes = await _repo.getAll();
    emit(WaitingState.ready);
  }
}
