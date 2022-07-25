import 'package:flutter/material.dart';
import 'package:food_ordering/presentation/view/bottom_sheet/filter.dart';
import 'package:food_ordering/presentation/view/plug/callback.dart';

class CatalogScaffold extends StatelessWidget {
  const CatalogScaffold({required this.body, Key? key}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: body,
    );
  }
}

class _AppBar extends AppBar {
  _AppBar(BuildContext context)
      : super(
          leading: IconButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (_) => const FilterBottomSheet(),
            ),
            //TODO Refactor. Find needed icon
            icon: const Icon(Icons.filter_list),
          ),
          centerTitle: true,
          title: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                height: kToolbarHeight,
              ),
              child: Image.asset(
                "assets/image/app/logo.png",
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          actions: [
            const IconButton(
              onPressed: plug, //TODO Main. Implement button
              icon: Icon(Icons.search),
            )
          ],
        );
}
