import 'package:flutter/material.dart';

import 'element.dart';

class PagePlug extends StatelessWidget {
  const PagePlug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ElementPlug(),
    );
  }
}
