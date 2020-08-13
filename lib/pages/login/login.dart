import 'package:blood_donation/pages/login/components/loginButton.dart';
import 'package:blood_donation/pages/login/components/loginPageHeader.dart';
import 'package:blood_donation/pages/login/components/loginTextField.dart';
import 'package:blood_donation/pages/login/components/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const LoginPageHeader(),
              SizedBox(height: 40),
              CustomTextField("username"),
              CustomTextField("password"),
              LoginButton(),
            ],
          ),
          Register(),
        ],
      ),
    );
  }
}
