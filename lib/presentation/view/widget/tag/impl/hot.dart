import 'package:flutter/material.dart';

import '../base.dart';

class HotTag extends StatelessWidget {
  const HotTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(
      icon: Image.asset("assets/image/tag/hot.png"),
      colors: const [
        Color(0xFFF97D23),
        Color(0xFFFB4E1E),
        Color(0xFFF83600),
      ],
    );
  }
}
