import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo/core/util/app_routes.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  RxBool isLoading = false.obs;

  String mobileNo = "";

  Future<void> sendLoginOtpButton() async {
    final isValidate = loginFormKey.currentState?.validate();

    if (isValidate != true) {
      return;
    }
    loginFormKey.currentState?.save();

    Get.offNamed(AppRoutes.homePage);

  }

}
