import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasallny/constants/my_strings.dart';
import 'package:wasallny/features/map_screen/views/map_screen_view.dart';
import 'package:wasallny/features/otp_screen/manager/cubit/phone_auth_cubit.dart';
import 'package:wasallny/features/otp_screen/views/otp_screen_view.dart';
import '../features/login_screen/views/login_screen_view.dart';

class AppRouter {
  PhoneAuthCubit? phoneAuthCubit;
  AppRouter() {
    phoneAuthCubit = PhoneAuthCubit();
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mapScreen:
        return MaterialPageRoute(
          builder: (_) => const MapScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: LoginScreen(),
          ),
        );
      case otpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: OtpScreen(),
          ),
        );
    }
  }
}
