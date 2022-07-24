import 'package:flutter/material.dart';
import 'package:food_ordering/presentation/view/page/catalog/page.dart';
import 'package:food_ordering/presentation/view/page/init.dart';

final Map<String, WidgetBuilder> routes = {
  "/init": (_) => const InitPage(),
  "/catalog": (_) => const CatalogPage(),
};
