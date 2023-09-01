import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool obscureText;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomTextFormField(
      {super.key,
      this.label,
      this.hint,
      this.errorMessage,
      this.onChanged,
      this.validator,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
        onChanged: onChanged,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
            enabledBorder: border,
            focusedBorder:
                border.copyWith(borderSide: BorderSide(color: colors.primary)),
            isDense: true,
            label: label != null ? Text(label!) : null,
            hintText: hint,
            errorText: errorMessage, //'Este es el errorTexts',
            errorBorder: border.copyWith(
                borderSide: BorderSide(color: Colors.red.shade800)),
            focusedErrorBorder: border.copyWith(
                borderSide: BorderSide(color: Colors.red.shade800)),
            focusColor: colors.primary));
  }
}
