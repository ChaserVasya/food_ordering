import 'package:flutter/material.dart';
import 'package:food_ordering/presentation/view/template/tag/impl/discount.dart';
import 'package:food_ordering/presentation/view/template/tag/impl/hot.dart';
import 'package:food_ordering/presentation/view/template/tag/impl/vegan.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: const [
            VeganTag(),
            HotTag(),
            DiscountTag(),
          ],
        ),
      ),
    );
  }
}
