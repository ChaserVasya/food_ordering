import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ordering/presentation/view_model/dish.dart';

import 'item.dart';

class DishGrid extends StatelessWidget {
  const DishGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DishViewModel>();
    final items = viewModel.dishes.map((e) => DishItem(e)).toList();

    return GridView.count(
      childAspectRatio: 0.6,
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: items,
    );
  }
}
