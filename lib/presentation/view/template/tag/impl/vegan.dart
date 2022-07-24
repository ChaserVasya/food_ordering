import 'package:flutter/material.dart';

import '../base.dart';

class VeganTag extends StatelessWidget {
  const VeganTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tag(
      icon: Image.asset("assets/image/tag/vegan.png"),
      colors: const [
        Color(0xFFA8E063),
        Color(0xFF66BE3E),
        Color(0xFF56AB2F),
      ],
    );
  }
}
