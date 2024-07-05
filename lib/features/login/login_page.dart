
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_demo/core/util/app_colors.dart';
import 'package:login_demo/core/util/dimens.dart';
import 'package:login_demo/features/login/login_controller.dart';
import '../../core/util/field_validators.dart';
import '../../widgets/molecules/app_button_widget.dart';
import '../../widgets/molecules/text_form_field_widget.dart';


class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: SingleChildScrollView(
                  child: Form(
                    key: controller.loginFormKey,
                    child: Column(
                      children: [
                        const SizedBox(height: Dimens.height60),
                        const FlutterLogo(size: 100),
                        const Text(
                          'Hi, Welcome Back!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: Dimens.height16),
                        TextFormFieldWidget(
                          labelText: "Mobile Number",
                          hintText: "Enter your Registered Number",
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          validator: mobileNoValidator,
                          onSaved: (value) {
                            controller.mobileNo = value ?? "";
                          },
                        ),
                        const SizedBox(height: Dimens.height30),
                        Obx(
                          () => AppButtonWidget(
                            isLoading: controller.isLoading.value,
                            buttonText: "Get your OTP",
                            onTap: () async {
                              await controller.sendLoginOtpButton();
                            },
                          ),
                        ),
                        const SizedBox(height: Dimens.height16),
                        _buildTextAndButtonRow(
                            instruction: "Don’t have an account ?",
                            buttonText: "Sign Up",
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextAndButtonRow(
      {required String instruction,
      required String buttonText,
      required void Function() onPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(instruction),
        const SizedBox(width: Dimens.width10),
        InkWell(
          onTap: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
