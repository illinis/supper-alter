import 'package:flutter/material.dart';
import 'package:supper_app/screens/screens.dart';

class ExtraordinaryPointScreen extends StatefulWidget {
  const ExtraordinaryPointScreen({Key? key}) : super(key: key);

  @override
  State<ExtraordinaryPointScreen> createState() => _ExtraordinaryPointScreenState();
}

class _ExtraordinaryPointScreenState extends State<ExtraordinaryPointScreen> {
  @override
  Widget build(BuildContext context) {
    return const RegisterPointScreen(
      order: "E",
      extraordinary: true,
      hideAppBar: true,
    );
  }
}
