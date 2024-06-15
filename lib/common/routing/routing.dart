import 'package:go_router/go_router.dart';
import 'package:nbapp/common/routing/route_paths.dart';
import 'package:nbapp/presentation/home/home_page.dart';

final appRoutes = GoRouter(
  initialLocation: RoutePaths.homePath,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: RoutePaths.homePath,
      builder: (context, state) {
        return const HomePage();
      },
    ),
  ],
);
