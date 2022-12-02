import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool obscureText;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter> inputFormatters;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.obscureText = false,
    this.onTap,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.textCapitalization = TextCapitalization.sentences,
    this.inputFormatters = const []
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      obscureText: obscureText,
      readOnly: onTap != null,
      onTap: onTap,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 3
          ),
          borderRadius: BorderRadius.circular(8.0)
        ),
        contentPadding: const EdgeInsets.fromLTRB(0, 20, 0, 20)
      ),
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    );
  }
}