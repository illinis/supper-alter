import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supper_app/models/models.dart';

import 'package:supper_app/providers/providers.dart';
import 'package:supper_app/screens/screens.dart';

import 'route_generator.dart';
import 'color_schemes.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Isar isar = await Isar.open(
      [UserSchema, EmployeeSchema, RegisteredPointSchema, ServiceItemSchema]);

  runApp(Supper(isar: isar));
}

class Supper extends StatelessWidget {
  final Isar isar;

  const Supper({Key? key, required this.isar}) : super(key: key);

  Future<void> init() async {
    await Hive.initFlutter();
  }

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider(isar: isar)),
        ChangeNotifierProvider(create: (_) => EmployeeProvider(isar: isar)),
        ChangeNotifierProvider(
            create: (_) => RegisteredPointProvider(isar: isar)),
        ChangeNotifierProvider(create: (_) => JourneyProvider()),
        ChangeNotifierProvider(create: (_) => ServiceItemProvider(isar: isar)),
        ChangeNotifierProvider(create: (_) => ProductionProvider(isar: isar))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Supper',
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: const Color(0xffee7b2e),
          colorScheme: lightColorScheme,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          snackBarTheme: const SnackBarThemeData(
            contentTextStyle: TextStyle(fontSize: 18),
          ),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          primaryColor: const Color(0xffee7b2e),
          colorScheme: darkColorScheme,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          snackBarTheme: const SnackBarThemeData(
            contentTextStyle: TextStyle(fontSize: 18),
          ),
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        home: FutureBuilder(
          future: init(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Scaffold(
                body: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: FractionallySizedBox(
                      widthFactor: 0.5,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ),
              );
            }
            return const SplashScreen();
          },
        ),
      ),
    );
  }
}
