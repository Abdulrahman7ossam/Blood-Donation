import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'عطاء',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          backgroundColor: Color(0xFFFF217A),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Image(
                image: AssetImage('images/1stblood.jpg'),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Donate to others',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    fontSize: 40.0,
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Donate to people in need',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 22.0,
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'One drop at a time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 22.0,
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.red),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nextpage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Nextpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'عطاء',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          backgroundColor: Color(0xFFFF217A),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Image(
                image: AssetImage('images/blood2.png'),
                height: 300,
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'A quick process',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    fontSize: 40.0,
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'With important health measurements',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 22.0,
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'and necessary measures',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 22.0,
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.red),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Lastpage()),
                    );
                  },
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lastpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'عطاء',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          backgroundColor: Color(0xFFFF217A),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('images/blood3.png'),
                height: 300,
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Hospitals',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    fontSize: 40.0,
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Donate to hospitals and blood',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 22.0,
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'banks whenever possible',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 22.0,
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.home, color: Colors.red),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Lastpage()),
                    );
                  },
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
