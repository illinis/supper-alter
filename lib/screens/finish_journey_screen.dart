import 'package:flutter/material.dart';
import 'package:supper_app/screens/screens.dart';

class FinishJourneyScreen extends StatefulWidget {
  const FinishJourneyScreen({Key? key}) : super(key: key);

  @override
  State<FinishJourneyScreen> createState() => _FinishJourneyScreenState();
}

class _FinishJourneyScreenState extends State<FinishJourneyScreen> {
  @override
  Widget build(BuildContext context) {
    return const RegisterPointScreen(order: "O", hideAppBar: true);
  }
}
