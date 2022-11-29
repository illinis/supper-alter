import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final T? value;
  final List<T> options;
  final String Function(T) getLabel;
  final void Function(T?) onChanged;
  final String? Function(T?)? validator;

  const CustomDropdown({
    Key? key,
    required this.labelText,
    this.hintText,
    this.prefixIcon,
    required this.value,
    required this.options,
    required this.getLabel,
    required this.onChanged,
    this.validator,
  }) : super(key: key);

  static const defaultTextStyle = TextStyle(fontWeight: FontWeight.w600, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      isExpanded: true,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.arrow_drop_down),
        labelText: labelText,
        hintText: hintText,
        labelStyle: defaultTextStyle,
        hintStyle: defaultTextStyle,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 3
            ),
            borderRadius: BorderRadius.circular(8.0)
        ),
          contentPadding: const EdgeInsets.fromLTRB(0, 18.5, 0, 18.5)
      ),
      icon: const SizedBox.shrink(),
      value: value,
      onChanged: onChanged,
      validator: validator,
      items: options.map<DropdownMenuItem<T>>((T value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Text(
            getLabel(value),
            style: defaultTextStyle,
          ),
        );
      }).toList(),
    );
  }
}
