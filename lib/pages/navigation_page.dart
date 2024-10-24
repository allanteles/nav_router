import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_router/pages/widgets/destination.dart';

class NavigationPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const NavigationPage({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey<String>('NavigationPage'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        indicatorColor: Theme.of(context).primaryColor,
        destinations: destinations
            .map(
              (dest) => NavigationDestination(
                icon: Icon(dest.icon),
                label: dest.label,
                selectedIcon: Icon(
                  dest.icon,
                  color: Colors.white,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
