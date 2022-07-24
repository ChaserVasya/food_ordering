import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final bundle = PlatformAssetBundle();
  group("Assets.", () {
    testWidgets(
      "Should be visible",
      (tester) async {
        await bundle.load("assets/image/tag/vegan.png");
        await bundle.load("assets/image/tag/hot.png");
        await bundle.load("assets/image/tag/discount.png");
      },
    );
  });
}
