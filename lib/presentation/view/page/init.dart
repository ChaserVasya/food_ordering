import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:food_ordering/application/injection.dart';
import 'package:food_ordering/application/navigator.dart';
import 'package:food_ordering/presentation/view/plug/callback.dart';
import 'package:food_ordering/presentation/view/plug/page.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  void initState() {
    super.initState();
    _initApp();
  }

  Future<void> _initApp() async {
    inject();
    await _pushHome();
  }

  Future<void> _pushHome() async {
    await Future(plug);
    navigator.pushReplacementNamed("/catalog");
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return const PagePlug();
  }
}
