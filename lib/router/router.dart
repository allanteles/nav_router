import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_router/pages/home_page.dart';
import 'package:nav_router/pages/navigation_page.dart';
import 'package:nav_router/pages/profile_page.dart';
import 'package:nav_router/pages/search_page.dart';
import 'package:nav_router/router/routes_name.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RoutesName.home,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          NavigationPage(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesName.home,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesName.search,
              builder: (context, state) => const SearchPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesName.profile,
              builder: (context, state) => const ProfilePage(),
              routes: [
                GoRoute(
                  path: RoutesName.profileConfig,
                  builder: (context, state) => const ProfilePage(),
                )
              ],
            ),
          ],
        ),
      ],
    )
  ],
);
