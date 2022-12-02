import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/providers/providers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> fetchData() async {
    UserProvider userProvider = context.read<UserProvider>();
    EmployeeProvider employeeProvider = context.read<EmployeeProvider>();
    RegisteredPointProvider registredPointProvider =
        context.read<RegisteredPointProvider>();

    User? user = await userProvider.fetchLocalUser();
    List<Employee>? employees = await employeeProvider.fetchLocalEmployees();
    await registredPointProvider.fetchLocalRegisteredPoints();

    if (mounted) {
      if (user != null && employees.isNotEmpty) {
        Navigator.of(context).pushReplacementNamed('/home');
        return;
      }

      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
        ),
      ),
    );
  }
}
