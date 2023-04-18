// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lab_manager/constant.dart';
import 'package:lab_manager/screens/forgot/forgot_screen.dart';
import 'package:lab_manager/screens/homepage/homepage_screen.dart';

import 'package:lab_manager/screens/login/component/forgot_button.dart';
import 'package:lab_manager/screens/login/component/account_check.dart';
import 'package:lab_manager/screens/login/component/or_divider.dart';
import 'package:lab_manager/screens/login/component/round_outline_button.dart';
import 'package:lab_manager/screens/login/component/rounded_input_field.dart';
import 'package:lab_manager/screens/login/component/rounded_password_field.dart';
import 'package:lab_manager/screens/sign_up/sign_up_screen.dart';
import 'package:lab_manager/screens/welcome/component/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.06, bottom: size.height * 0.04),
              child: Text(
                'LOG IN',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            RoundedInputField(
              hintText: 'Email Address',
              labelText: 'Email Address',
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedPasswordField(
              textField: 'Password',
              onChanged: (value) {},
            ),
            ForgotButton(
              textBtn: 'Forgot Password?',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgotScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePageScreen();
                    },
                  ),
                );
              },
              text: 'LOG IN',
            ),
            AccountCheck(
              text: 'Don\'t have an account?',
              textBtn: ' Sign up',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedOutlineButton(
              textBtn: 'Sign in with Google',
              press: () {},
              icon: 'assets/icons/google.png',
              margin: size.width * 0.14,
            ),
            RoundedOutlineButton(
              textBtn: 'Sign in with Apple',
              press: () {},
              icon: 'assets/icons/apple-logo.png',
              margin: size.width * 0.15,
            ),
            RoundedOutlineButton(
              textBtn: 'Sign in with Facebook',
              press: () {},
              icon: 'assets/icons/facebook.png',
              margin: size.width * 0.11,
            ),
          ],
        ),
      ),
    );
  }
}
