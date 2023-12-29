import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasallny/features/login_screen/widgets/custom_button.dart';
import 'package:wasallny/features/login_screen/widgets/intro_text.dart';
import 'package:wasallny/features/login_screen/widgets/phone_form_field.dart';
import 'package:wasallny/features/login_screen/widgets/phone_number_submited_bloc.dart';
import 'package:wasallny/features/otp_screen/manager/cubit/phone_auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _phoneFormKey = GlobalKey();

  PhoneNumberSubmitedBloc phoneNumberSubmitedBloc = PhoneNumberSubmitedBloc();
  late String phoneNumber;

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
                height: 88,
              ),
              PhoneFormField(),
              const SizedBox(
                height: 60,
              ),
              CustomButton(
                buttonText: 'Next',
                buttonColor: Colors.black,
                onPressed: () {
                  phoneNumberSubmitedBloc.showProgressIndicator(context);
                  register(context);
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Future<void> register(BuildContext context) async {
    if (!_phoneFormKey.currentState!.validate()) {
      Navigator.pop(context);
      return;
    } else {
      Navigator.pop(context);
      _phoneFormKey.currentState!.save();
      BlocProvider.of<PhoneAuthCubit>(context).submitPhoneNumber(phoneNumber);
    }
  }
}
