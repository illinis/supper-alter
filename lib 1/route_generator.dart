import 'package:flutter/material.dart';

import 'package:supper_app/screens/screens.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/splashscreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/register-point':
        if (args is  RegisterPointScreenArguments) {
          return MaterialPageRoute(
            builder: (_) => RegisterPointScreen(
              order: args.order,
              startPosition: args.startPosition,
              endPosition: args.endPosition,
            ),
          );
        }
        return _mainRoute();
      case '/register-point-manually':
        if (args is  RegisterPointManuallyScreenArguments) {
          return MaterialPageRoute(
            builder: (_) => RegisterPointManuallyScreen(
              order: args.order,
              emergency: args.emergency,
            ),
          );
        }
        return _mainRoute();

      default:
        return _mainRoute();
    }
  }

  static Route<dynamic> _mainRoute() =>
      MaterialPageRoute(builder: (_) => const HomeScreen());
}
