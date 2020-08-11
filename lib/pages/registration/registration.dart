import 'package:flutter/material.dart';
import 'package:blood_donation/pages/registration/components/registerTextField.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF217A),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Column(
          children: [
            _TopGradient(),
            CustomTextField("Name"),
            CustomTextField("Email"),
            CustomTextField("Password"),
            CustomTextField("Phone Number"),
            CustomTextField("CPR"),
            CustomTextField("Date of Birth"),
            GenderSelection(),
            SizedBox(height: 20),
            NextPageButton(),
          ],
        ),
      ),
    );
  }
}

class NextPageButton extends StatefulWidget {
  /// NextPageButton Button
  NextPageButton();

  @override
  _NextPageButtonState createState() => _NextPageButtonState();
}

class _NextPageButtonState extends State<NextPageButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.7),
      ),
      padding: EdgeInsets.all(9.0),
      onPressed: () {
        print("Next Page Button Pressed");
      },
      child: Container(
        width: 280,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Next Page",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class GenderSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Gender: ", style: TextStyle(fontSize: 18)),
      Container(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GenderCheckbox("Male"),
            GenderCheckbox("Female"),
          ],
        ),
      ),
    ]);
  }
}

class GenderCheckbox extends StatefulWidget {
  final String title;

  GenderCheckbox(this.title);

  @override
  _GenderCheckboxState createState() => _GenderCheckboxState();
}

class _GenderCheckboxState extends State<GenderCheckbox> {
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

class _AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment(0.2, 0.8),
          children: [
            Text(
              "عطاء",
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF445464),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TopGradient extends StatelessWidget {
  /// Background clipped gradient on Login page.
  const _TopGradient();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _MyClipper(),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFF217A),
              Color(0xFFFF4D4D),
            ],
          ),
        ),
        child: _AppName(),
      ),
    );
  }
}

/// Custom path clipper.
class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
