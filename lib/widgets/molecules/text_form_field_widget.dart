

import 'package:flutter/material.dart';
import 'package:login_demo/core/util/app_colors.dart';
import 'package:login_demo/core/util/dimens.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    this.hintText,
    this.readOnly = false,
    this.obscureText = false,
    this.onTap,
    this.prefixIcon,
    this.onSaved,
    this.initialValue,
    this.textInputAction,
    required this.labelText,
    this.labelColor,
    this.controller,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.onFieldSubmitted,
    this.onChanged,
    this.autofocus = false,
    this.enabled = true,
    this.style,
    this.maxLength,
    this.autovalidateMode,
    this.isRoundBorder = true,
    this.maxLines = 1,
    this.showCounterText = false,
    super.key,
  });

  final String? hintText;
  final String labelText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool readOnly;
  final void Function()? onTap;
  final Color? labelColor;
  final String? initialValue;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final bool autofocus;
  final Widget? prefixIcon;
  final TextStyle? style;
  final int? maxLength;
  final AutovalidateMode? autovalidateMode;
  final bool isRoundBorder;
  final int maxLines;
  final bool showCounterText;

  final bool enabled;

  final OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary,
    ),
  );

  final UnderlineInputBorder underlineInputBorder = const UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary,
      width: 2,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: labelColor ?? AppColors.primary),
        ),
        const SizedBox(height: Dimens.height10),
        TextFormField(
          cursorColor: AppColors.primary,
          style: style ?? const TextStyle(fontWeight: FontWeight.w500),
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: AppColors.primary.withOpacity(0.1),
            filled: true,
            enabled: enabled,
            counterText: showCounterText ? null : "",
            labelStyle: TextStyle(
              // color: Colors.red,
              color: labelColor ??
                  Theme.of(context).inputDecorationTheme.hintStyle?.color,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: isRoundBorder
                ? const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  )
                : null,
            enabledBorder: isRoundBorder
                ? outlineInputBorder.copyWith(
                    borderRadius: BorderRadius.circular(10),
                  )
                : underlineInputBorder,
            focusedBorder: isRoundBorder
                ? outlineInputBorder.copyWith(
                    borderRadius: BorderRadius.circular(10),
                  )
                : underlineInputBorder,
            errorBorder: isRoundBorder
                ? outlineInputBorder.copyWith(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.red,
                    ),
                  )
                : underlineInputBorder.copyWith(
                    borderSide: const BorderSide(
                      color: AppColors.red,
                    ),
                  ),
            focusedErrorBorder: isRoundBorder
                ? outlineInputBorder.copyWith(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.red,
                    ),
                  )
                : underlineInputBorder.copyWith(
                    borderSide: const BorderSide(
                      color: AppColors.red,
                    ),
                  ),
          ),
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          onSaved: onSaved,
          obscureText: obscureText,
          initialValue: initialValue,
          validator: validator,
          controller: controller,
          readOnly: readOnly,
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          autofocus: autofocus,
          autovalidateMode: autovalidateMode,
          maxLines: maxLines,
        ),
      ],
    );
  }
}
