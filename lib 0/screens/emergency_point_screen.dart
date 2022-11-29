import 'package:flutter/material.dart';

import 'package:supper_app/screens/screens.dart';

class EmergencyPointScreen extends StatefulWidget {
  const EmergencyPointScreen({Key? key}) : super(key: key);

  @override
  State<EmergencyPointScreen> createState() => _EmergencyPointScreenState();
}

class _EmergencyPointScreenState extends State<EmergencyPointScreen> {
  @override
  Widget build(BuildContext context) {
    return const RegisterPointScreen(
      order: "E",
      emergency: true,
      hideAppBar: true,
    );
  }
}
