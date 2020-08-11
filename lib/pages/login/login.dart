import 'package:flutter/material.dart';
import 'package:blood_donation/pages/login/components/customTextField.dart';
import 'package:blood_donation/pages/login/components/loginButton.dart';
import 'package:blood_donation/pages/login/components/loginPageHeader.dart';
import 'package:blood_donation/pages/login/components/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const LoginPageHeader(),
                SizedBox(height: 40),
                _InputsBlock(),
              ],
            ),
            Register(),
          ],
        ),
      ),
    );
  }
}

class _InputsBlock extends StatelessWidget {
  /// Contains username and password textFields, and Login button.
  _InputsBlock();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField("username"),
        SizedBox(height: 20),
        CustomTextField("password"),
        SizedBox(height: 20),
        LoginButton(),
      ],
    );
  }
}
