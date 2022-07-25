import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    Key? key,
    required this.icon,
    required this.colors,
  }) : super(key: key);

  final Widget icon;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0, 0.62, 1],
          colors: colors,
        ),
      ),
      child: Center(
        child: SizedBox(
          height: 12,
          width: 12,
          child: icon,
        ),
      ),
    );
  }
}
