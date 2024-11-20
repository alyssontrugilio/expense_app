import 'package:go_router/go_router.dart';

import '../presentation/presentation.dart';

class AppRoute {
  static const String splashPage = '/splash';

  static GoRouter goRouter = GoRouter(
    initialLocation: splashPage,
    routes: [
      GoRoute(
        path: splashPage,
        builder: (context, state) => const SplashPage(),
      ),
    ],
  );
}
