import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import 'route_names.dart';  // Import the route names file

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

// Define your routes here using RouteNames constants
final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouteNames.home,  // Use constant here
  routes: [
    // Home Page Route
    GoRoute(
      path: RouteNames.home,  // Use constant here
      builder: (BuildContext context, GoRouterState state) {
        return Container();
      },
    ),
    // About Page Route
    GoRoute(
      path: RouteNames.about,  // Use constant here
      builder: (BuildContext context, GoRouterState state) {
        return Container();
      },
    ),
    // Profile Page Route
    GoRoute(
      path: RouteNames.profile,  // Use constant here
      builder: (BuildContext context, GoRouterState state) {
        return Container();
      },
    ),
  ],
  errorBuilder: (context, state) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Text('Page not found: ${state.error}'),
      ),
    );
  },
);
