import 'package:flutter/material.dart';
import 'package:wasallny/constants/my_strings.dart';
import 'package:wasallny/features/otp_screen/views/otp_screen_view.dart';
import '../features/login_screen/views/login_screen_view.dart';

class AppRouter {
    Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
          case otpScreen:
        return MaterialPageRoute(
          builder: (_) => OtpScreen(),
        );
    }
  }
}
