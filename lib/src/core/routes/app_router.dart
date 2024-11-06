import 'package:chitrapat/src/core/core.dart';
import 'package:chitrapat/src/core/routes/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    final rootNavigator = GlobalKey<NavigatorState>(debugLabel: 'root');
    final shellNavigator = GlobalKey<NavigatorState>(debugLabel: 'shell');
    return GoRouter(
      initialLocation: AppRoutes.splashRoute.path,
      navigatorKey: rootNavigator,
      routes: [
        GoRoute(
          path: AppRoutes.splashRoute.path,
          name: AppRoutes.splashRoute.routeName,
          pageBuilder: (context, state) => FadeTransitionPage(
            key: state.pageKey,
            child: const SplashScreen(),
          ),
        ),
        // GoRoute(
        //   path: AppRoutes.loginRoute.path,
        //   name: AppRoutes.loginRoute.routeName,
        //   pageBuilder: (context, state) => FadeTransitionPage(
        //     key: state.pageKey,
        //     child: const LoginScreen(),
        //   ),
        // ),
      ],
      errorBuilder: (context, state) => const ErrorScreen(),
      redirect: (BuildContext context, GoRouterState state) async {
        return null;
      },
      debugLogDiagnostics: kDebugMode,
    );
  },
);

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (c, animation, a2, child) => FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          ),
        );
}
