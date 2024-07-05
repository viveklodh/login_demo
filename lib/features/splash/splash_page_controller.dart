import 'package:get/get.dart';
import 'package:login_demo/core/util/app_routes.dart';


class SplashPageController extends GetxController {
  @override
  void onInit() {

    Future.delayed(const Duration(seconds: 3), () async {
      Get.offAllNamed(AppRoutes.loginPage);
    });

    super.onInit();
  }
}
