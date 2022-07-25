import 'package:flutter/material.dart';
import 'package:food_ordering/presentation/view/widget/tag/base.dart';

class ExpressTag extends StatelessWidget {
  const ExpressTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(
      icon: Image.asset("assets/image/tag/express.png"),
      colors: const [
        Color(0xFFF32EA2),
        Color(0xFFF345C2),
        Color(0xFFF59192),
      ],
    );
  }
}
