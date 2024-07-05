import 'package:get/get.dart';
import 'package:login_demo/features/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
