import 'package:flutter/material.dart';

import 'app_route.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Expense App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff519A95),
        ),
        useMaterial3: true,
      ),
      routerConfig: AppRoute.goRouter,
    );
  }
}
