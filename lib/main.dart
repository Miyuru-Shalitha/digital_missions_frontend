import 'package:digital_missions_frontend/screens/HomeScreen.dart';
import 'package:digital_missions_frontend/screens/LogInScreen.dart';
import 'package:digital_missions_frontend/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  // initialLocation: "/log-in",
  routes: [
    ShellRoute(
      routes: [
        GoRoute(
          path: "/log-in",
          builder: (BuildContext context, GoRouterState state) {
            return LogInScreen();
          },
        ),
        GoRoute(
          path: "/register",
          builder: (BuildContext context, GoRouterState state) {
            return RegisterScreen();
          },
        ),
        GoRoute(
          path: "/",
          builder: (BuildContext context, GoRouterState state) {
            return HomeScreen();
          },
        ),
      ],
      builder: (BuildContext build, GoRouterState state, Widget child) {
        return Scaffold(body: child);
      },
    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: "NGP6",
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: Colors.black87,
        ),
      ),
    );
  }
}
