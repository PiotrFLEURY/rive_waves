import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waves/presentation/ui/home/home.dart';
import 'package:waves/presentation/ui/splash/splash.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Splash();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);
