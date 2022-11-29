import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final String name;
  final String place;
  final List<Map<String, dynamic>> routes;
  final List<Map<String, dynamic>>? actions;

  const CustomDrawer({
    Key? key,
    required this.name,
    required this.place,
    required this.routes,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  radius: 30,
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Flexible(
                    child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                )),
                Flexible(
                    child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    place,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                )),
              ],
            ),
          ),
          for (var route in routes)
            ListTile(
              title: Text(
                route['title'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              leading: Icon(
                route['icon'],
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              onTap: route['onTap'],
              selected: route['selected'],
              selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
            ),
          for (int i = 0; i < (actions?.length ?? 0); i++)
            ListTile(
              title: Text(
                actions?[i]['title'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              leading: Icon(
                actions?[i]['icon'],
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              onTap: actions?[i]['onTap'],
            )
        ],
      ),
    );
  }
}
