import 'package:flutter/material.dart';
import 'package:futnet/utils/validators.dart';

class CustomTextField extends StatelessWidget {
  int textLine;
  int? maxLength;
  double borderRadius;
  Color? hintTextColor, prefixIconColor, filledColor;
  bool? readOnly, filled;
  IconData? prefixIcon;
  String? hintText;
  TextEditingController controller = TextEditingController();
  TextInputType? keyboardType;

  CustomTextField({
    super.key,
    required this.textLine,
    this.keyboardType,
    this.maxLength,
    this.readOnly,
    this.hintTextColor,
    this.hintText,
    this.prefixIcon,
    this.filled,
    this.filledColor,
    this.prefixIconColor,
    required this.borderRadius,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      readOnly: readOnly ?? false,
      maxLength: maxLength,
      keyboardType: keyboardType,
      validator: validateText,
      controller: controller,
      maxLines: textLine,
      decoration: InputDecoration(
        filled: filled ?? false,
        fillColor: filledColor ?? Colors.transparent,
        hintText: hintText ?? "Enter",
        hintStyle: TextStyle(color: hintTextColor ?? Colors.black),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        prefixIconColor: prefixIconColor ?? Colors.black,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        border: _border(),
        enabledBorder: _border(),
        errorBorder: _border(),
        focusedBorder: _border(),
        focusedErrorBorder: _border(),
        disabledBorder: _border(),
      ),
    );
  }

  _border() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(
          color: Colors.black,
          // width: 0.2,
        ),
      );
}
