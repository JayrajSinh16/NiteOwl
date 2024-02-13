import 'package:flutter/material.dart';
import 'package:niteowl/common/widgets/error.dart';
import 'package:niteowl/features/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: "This Page doesn't exits",
          ),
        ),
      );
  }
}
