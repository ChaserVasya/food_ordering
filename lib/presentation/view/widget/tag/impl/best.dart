import 'package:flutter/material.dart';
import 'package:food_ordering/presentation/view/widget/tag/base.dart';

class BestTag extends StatelessWidget {
  const BestTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(
      icon: Image.asset("assets/image/tag/best.png"),
      colors: const [
        Color(0xFF729EF2),
        Color(0xFF9365C2),
        Color(0xFF452192),
      ],
    );
  }
}
