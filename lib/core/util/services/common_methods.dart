
import 'package:get/get.dart';

class CommonMethods {
  CommonMethods._();

  static showToast({required String title, required dynamic message}) {
    return Get.showSnackbar(
      GetSnackBar(
        title: title,
        message: '$message',
        duration: const Duration(seconds: 3),
      ),
    );
  }

}

void consoleLog(String message) {
}
