import 'package:flutter/material.dart';
import 'package:food_ordering/presentation/view/page/catalog/content/grid.dart';
import 'package:food_ordering/presentation/view/page/catalog/scaffold.dart';
import 'package:food_ordering/presentation/view/widget/awaiter.dart';
import 'package:food_ordering/presentation/view_model/dish.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Awaiter(
      create: (_) => DishViewModel(),
      builder: (_) => const CatalogScaffold(
        body: DishGrid(),
      ),
    );
  }
}
