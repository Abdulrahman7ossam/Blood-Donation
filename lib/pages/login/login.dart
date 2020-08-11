import 'package:flutter/material.dart';

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

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Dont have an account yet?",
            style: TextStyle(color: Color(0xEE9EA8B0), fontSize: 18.0)),
        MaterialButton(
          child: Text(
            "Register",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          onPressed: () {
            print("Register button pressed");
          },
        ),
        SizedBox(height: 40),
      ],
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

class LoginButton extends StatefulWidget {
  /// Login Button
  LoginButton();

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color(0xEEDF473C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.7),
      ),
      padding: EdgeInsets.all(9.0),
      onPressed: () {
        print("Login Button Pressed");
      },
      child: Container(
        width: 280,
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String hintText;

  /// Textfield for username and password fields.
  CustomTextField(this.hintText);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: TextField(
        autofocus: false,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22.0),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}

class LoginPageHeader extends StatelessWidget {
  /// Contains blood-bag image and application title.
  const LoginPageHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/blood-transfusion.png', height: 220, width: 220),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment(0.5, 0.8),
              children: [
                Text(
                  "عطاء",
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  "تبرع بالدم",
                  style: TextStyle(fontSize: 18.0, color: Color(0xEE445464)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
