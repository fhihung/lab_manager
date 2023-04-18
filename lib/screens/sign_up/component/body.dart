import 'package:flutter/material.dart';

import '../../login/component/account_check.dart';
import '../../login/component/forgot_button.dart';
import '../../login/component/or_divider.dart';
import '../../login/component/round_outline_button.dart';
import '../../login/component/rounded_input_field.dart';
import '../../login/component/rounded_password_field.dart';
import '../../login/login_screen.dart';
import '../../welcome/component/rounded_button.dart';
import '../sign_up_screen.dart';

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
                'CREATE YOUR ACCOUNT',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            RoundedInputField(
              hintText: 'Email Address',
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedPasswordField(
              textField: 'Password',
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedPasswordField(
              textField: 'Confirm Password',
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              press: () {},
              text: 'SIGN IN',
            ),
            AccountCheck(
              text: 'Already have an account?',
              textBtn: ' Log in',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
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
              margin: size.width * 0.15,
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
              margin: size.width * 0.15,
            ),
          ],
        ),
      ),
    );
  }
}
