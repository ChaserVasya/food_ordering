import 'package:flutter/material.dart';
import 'package:food_ordering/application/routes.dart';

import 'navigator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      navigatorKey: navigatorKey,
      initialRoute: "/init",
    );
  }
}
