import 'package:flutter/material.dart';

import '../base.dart';

class DiscountTag extends StatelessWidget {
  const DiscountTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(
      icon: Image.asset("assets/image/tag/vegan.png"),
      colors: const [
        Color(0xFF729EF2),
        Color(0xFF9365C2),
        Color(0xFF452192),
      ],
    );
  }
}
