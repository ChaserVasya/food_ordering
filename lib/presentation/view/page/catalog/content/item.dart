import 'package:flutter/material.dart';
import 'package:food_ordering/application/dto/dish_item_info/entity.dart';
import 'package:food_ordering/domain/entity/tag.dart';
import 'package:food_ordering/presentation/view/plug/callback.dart';
import 'package:food_ordering/presentation/view/widget/tag/impl/best.dart';
import 'package:food_ordering/presentation/view/widget/tag/impl/hot.dart';
import 'package:food_ordering/presentation/view/widget/tag/impl/new.dart';
import 'package:food_ordering/presentation/view/widget/tag/impl/vegan.dart';

class DishItem extends StatelessWidget {
  const DishItem(
    this.info, {
    Key? key,
  }) : super(key: key);

  final DishItemInfo info;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Expanded(child: _Image(info)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    info.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${info.mass} ${info.massUnit}",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  const SizedBox(height: 8),
                  _Cost(info),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image(
    this.info, {
    Key? key,
  }) : super(key: key);

  final DishItemInfo info;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(info.imagePath),
        _Tag(info.tags),
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag(
    this.tags, {
    Key? key,
  }) : super(key: key);

  final List<DishTag> tags;

  @override
  Widget build(BuildContext context) {
    //TODO Refactor. Create [SeparatedRow]
    var tagWidgets = tags
        .map((e) => Padding(
              padding: const EdgeInsets.only(right: 4),
              child: _chooseTag(e),
            ))
        .toList();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(children: tagWidgets),
    );
  }

  Widget _chooseTag(DishTag tag) {
    switch (tag) {
      case DishTag.hot:
        return const HotTag();
      case DishTag.vegan:
        return const VeganTag();
      case DishTag.novelty:
        return const NewTag();
      case DishTag.best:
        return const BestTag();
      case DishTag.express:
        return const HotTag();
    }
  }
}

class _Cost extends StatelessWidget {
  const _Cost(this.info, {Key? key}) : super(key: key);

  final DishItemInfo info;

  //TODO fill card border properties
  @override
  Widget build(BuildContext context) {
    Widget content = Text("${info.price ~/ 100} ₽");

    if (info.oldPrice != null) {
      final oldPriceStyle = Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(decoration: TextDecoration.lineThrough);

      content = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          content,
          Text("${info.oldPrice! ~/ 100} ₽", style: oldPriceStyle),
        ],
      );
    }

    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      onPressed: plug,
      child: content,
    );
  }
}
