import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Container(
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
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
