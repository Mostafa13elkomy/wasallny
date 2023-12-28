import 'package:flutter/material.dart';
import 'package:wasallny/presentation/login_screen/widgets/custom_button.dart';
import 'package:wasallny/presentation/login_screen/widgets/intro_text.dart';
import 'package:wasallny/presentation/login_screen/widgets/phone_form_field.dart';

class LoginScreen extends StatelessWidget {
    LoginScreen({super.key});

  final GlobalKey<FormState> _phoneFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _phoneFormKey,
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 88),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const IntroText(),
              const SizedBox(
                height: 55,
              ),
              PhoneFormField(),
              const SizedBox(
                height: 55,
              ),
              const CustomButton(buttonText: 'Next')
            ],
          ),
        ),
      ),
    ));
  }
}
