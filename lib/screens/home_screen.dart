import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:supper_app/providers/providers.dart';
import 'package:supper_app/screens/screens.dart';
import 'package:supper_app/widgets/widgets.dart';
import 'package:supper_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  String _userRegistration = '';

  late final List<Map<String, dynamic>> _routes = [
    {
      'title': 'Inicio',
      'icon': Icons.home,
      'selected': true,
      'screen': const DashboardScreen(),
      'beforeNavigate': () => true,
    },
    {
      'title': 'Iniciar Jornada',
      'icon': Icons.drive_eta,
      'selected': false,
      'screen': StartJourneyScreen(notifyParent: updateCurrentRoute),
      'beforeNavigate': () async {
        JourneyProvider journeyProvider = context.read<JourneyProvider>();
        final List<DateTime?> journeys = await journeyProvider.getAllJourneys();
        final DateTime? lastStartedJourney = journeys[0];
        final DateTime? lastFinishedJourney = journeys[1];

        // Validate if there's a journey started but not finished
        if (lastStartedJourney != null &&
            lastStartedJourney.isAfter(lastFinishedJourney ?? DateTime(1970)) &&
            mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Jornada já iniciada.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
          return false;
        }
        // Validate if interstice has passed or not
        if (lastFinishedJourney != null &&
            lastFinishedJourney.difference(DateTime.now()).inHours <=
                kIntersticeSize &&
            mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Interstício não finalizado.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
          return false;
        }
        return true;
      },
    },
    {
      'title': 'Finalizar Jornada',
      'icon': Icons.backspace,
      'selected': false,
      'screen': const FinishJourneyScreen(),
      'beforeNavigate': () async {
        JourneyProvider journeyProvider = context.read<JourneyProvider>();
        final List<DateTime?> journeys = await journeyProvider.getAllJourneys();
        final DateTime? lastStartedJourney = journeys[0];
        final DateTime? lastFinishedJourney = journeys[1];

        // Validate if there's a journey that was started but not finished
        if (lastFinishedJourney != null &&
            lastFinishedJourney.isAfter(lastStartedJourney ?? DateTime(1970)) &&
            mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Jornada não iniciada",
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
          return false;
        }
        return true;
      },
    },
    {
      'title': 'Ponto extraordinário',
      'icon': Icons.apps_outage,
      'selected': false,
      'screen': const ExtraordinaryPointScreen(),
      'beforeNavigate': () => true,
    },
    {
      'title': 'Ponto emergencial',
      'icon': Icons.warning,
      'selected': false,
      'screen': const EmergencyPointScreen(),
      'beforeNavigate': () => true,
    },
    {
      'title': 'Apontamento prod.',
      'icon': Icons.construction,
      'selected': false,
      'screen': const ProductionScreen(),
      'beforeNavigate': () => true,
    },
    {
      'title': 'Listagem de prod.',
      'icon': Icons.view_list,
      'selected': false,
      'screen': const SizedBox.shrink(),
      'beforeNavigate': () => false,
    }
  ];

  late final List<Map<String, dynamic>> _actions = [
    {'title': 'Sincronizar', 'icon': Icons.sync, 'onTap': () {}},
    {
      'title': 'Sair',
      'icon': Icons.logout,
      'onTap': () async {
        await context.read<UserProvider>().signOut();
        if (mounted) {
          Navigator.of(context).pushReplacementNamed('/login');
        }
      }
    }
  ];

  void updateCurrentRoute({int newIndex = 0}) {
    setState(() {
      _routes[_currentIndex]['selected'] = false;
      _routes[newIndex]['selected'] = true;
      _currentIndex = newIndex;
    });
  }

  Future<void> handleDrawerNavigation(String route) async {
    int newIndex = _routes.indexWhere((element) => element['title'] == route);
    if (newIndex == -1 || newIndex == _currentIndex) {
      return;
    }

    updateCurrentRoute(newIndex: newIndex);

    Navigator.of(context).pop();
  }

  Future<void> setUserRegistration() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final auth = prefs.getString('@Supper:auth');
    if (auth != null && auth.isNotEmpty) {
      setState(() {
        _userRegistration = jsonDecode(auth)['registration'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setUserRegistration();
    for (var route in _routes) {
      route['onTap'] = () async {
        if (await route['beforeNavigate']()) {
          handleDrawerNavigation(route['title']);
        } else {
          Navigator.of(context).pop();
        }
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: _routes[_currentIndex]['title']),
      drawer: CustomDrawer(
        name: context.read<UserProvider>().getUser()?.name ??
            'Encarregado $_userRegistration',
        place: context.read<UserProvider>().getUser()?.workName ?? '',
        routes: _routes,
        actions: _actions,
      ),
      body: WillPopScope(
        onWillPop: () async {
          if (_currentIndex != 0) {
            setState(() {
              _routes[_currentIndex]['selected'] = false;
              _routes[0]['selected'] = true;
              _currentIndex = 0;
            });
            return false;
          }
          return true;
        },
        child: SafeArea(
          child: _routes.elementAt(_currentIndex)['screen'],
        ),
      ),
    );
  }
}
