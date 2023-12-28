import 'package:flutter/material.dart';
import 'package:wasallny/constants/my_strings.dart';
import 'package:wasallny/presentation/otp_screen/otp_screen_view.dart';
import '../presentation/login_screen/login_screen_view.dart';

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
