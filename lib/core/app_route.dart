import 'package:go_router/go_router.dart';

import '../presentation/presentation.dart';

class AppRoute {
  static const String splashPage = '/splash';
  static const String onboardingPage = '/onboarding';

  static GoRouter goRouter = GoRouter(
    initialLocation: onboardingPage,
    routes: [
      GoRoute(
        path: splashPage,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: onboardingPage,
        builder: (context, state) => const OnboardingPage(),
      )
    ],
  );
}
