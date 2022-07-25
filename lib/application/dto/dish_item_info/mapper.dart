import 'package:food_ordering/domain/entity/dish.dart';

import 'entity.dart';

class DishMapper {
  static DishItemInfo toDishInfo(Dish dish) {
    //TODO Main. Create different images
    const imagePath = "assets/image/dish/tom_yam.png";

    return DishItemInfo(
      id: dish.id,
      mass: dish.measure,
      massUnit: dish.measureUnit,
      name: dish.name,
      imagePath: imagePath,
      price: dish.priceCurrent,
      oldPrice: dish.priceOld,
      tags: dish.tags,
    );
  }
}
