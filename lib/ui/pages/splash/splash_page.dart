import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.offAllNamed('/login'),
    );
    return const Scaffold();
  }
}
