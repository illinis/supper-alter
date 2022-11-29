import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? widget;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.primary,
          ),
          shadowColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.primary,
          ),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        child: Center(
          child: widget ?? Text(
            text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
