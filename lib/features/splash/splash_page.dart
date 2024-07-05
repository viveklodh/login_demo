import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_page_controller.dart';



class SplashPage extends GetView<SplashPageController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FlutterLogo()
    );
  }
}
