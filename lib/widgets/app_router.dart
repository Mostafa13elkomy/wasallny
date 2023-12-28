import 'package:flutter/material.dart';
import 'package:wasallny/constants/my_strings.dart';
import '../presentation/login_screen/login_screen_view.dart';

class AppRouter {
    Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
    }
  }
}
