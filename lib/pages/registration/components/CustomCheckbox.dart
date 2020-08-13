import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final String title;

  /// Checkbox that acceps custom text.
  CustomCheckbox(this.title);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CheckboxListTile(
        title: Text(widget.title),
        value: checkedValue,
        onChanged: (newValue) {
          setState(() => checkedValue = newValue);
        },
        controlAffinity:
            ListTileControlAffinity.leading, //  <-- leading Checkbox
      ),
    );
  }
}
