import 'package:flutter/material.dart';
import 'package:wasallny/presentation/login_screen/widgets/custom_button.dart';
import 'package:wasallny/presentation/otp_screen/widgets/intro_text.dart';
import 'package:wasallny/presentation/otp_screen/widgets/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 32,vertical: 88),
          child: Column(
            children: [
              OtpIntroText(),
              const SizedBox(
                height: 88,
              ),
            const PinCodeFields(),
            SizedBox(height: 60,),
              CustomButton(buttonText: 'Verify',
              )
            ],
          ),
        ),
      ));
  }
}