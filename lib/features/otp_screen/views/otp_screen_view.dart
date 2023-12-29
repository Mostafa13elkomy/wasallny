import 'package:flutter/material.dart';
import 'package:wasallny/features/otp_screen/widgets/intro_text.dart';
import 'package:wasallny/features/otp_screen/widgets/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Container(
            margin:const EdgeInsets.symmetric(horizontal: 32,vertical: 88),
            child: Column(
              children: [
                OtpIntroText(),
                const SizedBox(
                  height: 88,
                ),
              const PinCodeFields(),
              const SizedBox(height: 60,),
              Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
          onPressed: () {
            
          },
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 50),
              backgroundColor: Colors.black
              ,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                    child:const Text(
            // buttonText,
            'Verify',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
              ),
            )
              ],
            ),
          ),
        ),
      ));
  }
}