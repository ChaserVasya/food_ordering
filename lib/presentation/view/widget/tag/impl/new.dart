import 'package:flutter/material.dart';
import 'package:food_ordering/presentation/view/widget/tag/base.dart';

class NewTag extends StatelessWidget {
  const NewTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(
      icon: Image.asset("assets/image/tag/new.png"),
      colors: [
        Colors.yellow[900]!,
        Colors.yellow[400]!,
        Colors.yellow[100]!,
      ],
    );
  }
}
