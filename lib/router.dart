import 'package:go_router/go_router.dart';

import 'forecast_screen.dart';
import 'island_screen.dart';

// TODO 3: wrap the routes in a StatefulShellRoute.indexedStack with a
// NavigationBar and three tabs: Previsão ('/'), Avisos ('/alerts') and
// Definições ('/settings').

/// Every screen of the app, with its path, like the pages of a site.
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ForecastScreen(),
      routes: [
        GoRoute(
          path: 'island/:id', // /island/pico
          builder: (context, state) =>
              IslandScreen(id: state.pathParameters['id']!),
        ),
      ],
    ),
  ],
);
