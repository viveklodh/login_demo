import 'package:flutter/material.dart';

import '../../core/util/app_colors.dart';
import '../../core/util/dimens.dart';



class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget(
      {required this.buttonText,
      this.backgroundColor,
      this.borderColor,
      this.fontColor,
      this.onTap,
      this.margin,
      this.width,
      this.height,
      this.hideShadow = false,
      this.isLoading = false,
      super.key});
  final Color? backgroundColor;
  final Color? fontColor;
  final void Function()? onTap;
  final Color? borderColor;
  final String buttonText;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final bool hideShadow;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: Container(
        margin: margin,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        height: height ?? Dimens.height40,
        decoration: ShapeDecoration(
          shadows: hideShadow
              ? []
              : [
                  BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 4,
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(2, 2))
                ],
          color: backgroundColor ?? Color(0xFFFF6201),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.5, color: borderColor ?? Colors.white),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: isLoading
            ? SizedBox(
                height: (height ?? Dimens.height40) - 15,
                width: (height ?? Dimens.height40) - 15,
                child: const CircularProgressIndicator(color: AppColors.white))
            : Text(
                buttonText,
                style: TextStyle(
                  color: fontColor ?? Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
      ),
    );
  }
}

class TextButtonWdget extends StatelessWidget {
  const TextButtonWdget(
      {required this.onTap,
      required this.text,
      this.textColor,
      this.textSize,
      super.key});
  final void Function()? onTap;
  final String text;
  final Color? textColor;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            color: textColor,
          ),
        ));
  }
}
