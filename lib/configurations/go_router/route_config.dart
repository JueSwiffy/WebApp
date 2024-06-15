import 'package:go_router/go_router.dart';
import 'package:paw_friends_web/configurations/go_router/route_names.dart';

import '../../adapter/presentation//camera/camera_controller_view.dart';
import '../../adapter/presentation/main/main_application.dart';

class RouteConfig {
  // Private constructor to prevent instantiation
  RouteConfig._();

  // Singleton instance
  static final RouteConfig _instance = RouteConfig._();

  // Factory method to access the singleton instance
  factory RouteConfig() => _instance;

  // Initialize and configure GoRouter
  final GoRouter _router = GoRouter(
    // initialLocation: "/",
    routes: [
      GoRoute(
        path: RouteNames.mainApplication,
        builder: (_, state) =>
            const MainApplication(title: 'LINK AI Swiffy Wiki'),
        routes: [
          GoRoute(
            path: RouteNames.camera,
            name: RouteNames.camera,
            builder: (_, state) => const CameraControllerView(),
          ),
        ],
      ),
    ],
  );

  // Get method to access the router instance
  GoRouter get router => _router;
}
