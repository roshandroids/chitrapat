import 'package:chitrapat/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    super.key,
    this.decoration,
    this.inputFormatters,
    this.autovalidateMode,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.onSaved,
    this.onEditingComplete,
    this.textInputAction,
    this.hintText,
    this.labelText,
    this.hintStyle,
    this.labelStyle,
    this.suffix,
    this.suffixIcon,
    this.enabled,
  });

  final TextEditingController controller;
  final InputDecoration? decoration;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Widget? suffix;
  final Widget? suffixIcon;
  final bool? enabled;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        style: Theme.of(context).textTheme.bodyLarge,
        decoration: decoration ??
            InputDecoration(
              hintText: hintText,
              hintStyle: hintStyle ?? Theme.of(context).textTheme.titleSmall,
              labelText: labelText,
              labelStyle: labelStyle ?? Theme.of(context).textTheme.titleSmall,
              errorStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).coreRed),
              disabledBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
              errorBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              focusedBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              focusedErrorBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              suffix: suffix,
              suffixIcon: suffixIcon,
            ),
        inputFormatters: inputFormatters,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obscureText,
        validator: validator,
        onSaved: onSaved,
        onEditingComplete: onEditingComplete,
        textInputAction: textInputAction ?? TextInputAction.done,
      ),
    );
  }
}
