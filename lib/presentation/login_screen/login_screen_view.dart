import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget _buildIntroTexts() {
    return  Column(
      children: [
        const Text(
          'What is your phone number',
          style: TextStyle(color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold),
        ),
      const  SizedBox(height: 30,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child:const Text('Please enter your phone number to verify your account',
          style:  TextStyle(color: Colors.black,
          fontSize: 18),) ,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: UniqueKey(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 88),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            _buildIntroTexts(),
          ]),
        ),
      ),
    ));
  }
}
