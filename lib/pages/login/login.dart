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
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const LoginPageHeader(),
            SizedBox(height: 40),
            Column(
              children: [
                CustomTextField("username"),
                SizedBox(height: 20),
                CustomTextField("password"),
                SizedBox(height: 20),
                FlatButton(
                  child: Text("Login"),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String hintText;

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
        style: TextStyle(
          fontSize: 22.0,
          color: Color(0xFFbdc6cf),
        ),
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
  const LoginPageHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        Image.asset('assets/blood-bag.png', height: 150, width: 150),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "عطاء",
              style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Color(0xEEDF473C)),
            ),
          ],
        ),
      ],
    );
  }
}
