import 'package:blood_donation/pages/homePage/components/backgroundGradient.dart';
import 'package:blood_donation/pages/homePage/components/donateButton.dart';
import 'package:blood_donation/pages/homePage/components/donationsLivesSaved.dart';
import 'package:blood_donation/pages/homePage/components/nextDonationWindow.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _HomePageHeader(),
          Expanded(
            child: ListView(
              children: [
                const LastDonationCard(),
                const FactOfTheDay(),
                const VideoDecoration(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class VideoDecoration extends StatefulWidget {
  /// Video Decoration card at the bottom of the homepage.
  const VideoDecoration();

  @override
  _VideoDecorationState createState() => _VideoDecorationState();
}

class _VideoDecorationState extends State<VideoDecoration> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/donation_stop_motion_video.mp4')
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized,
            // even before the play button has been pressed.
            setState(() {
              // mute, loop, and play the video.
              _controller.setVolume(0);
              _controller.setLooping(true);
              _controller.play();
            });
          });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 200,
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}

class FactOfTheDay extends StatelessWidget {
  /// Fact of the day card.
  const FactOfTheDay();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 130,
        decoration: _cardBackground(),
        alignment: Alignment.center,
        child: ListTile(
          leading: Icon(Icons.info_outline, size: 50, color: Colors.green),
          title: Text(
            "Fact Of The Day",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "The average adult has 10 to 12 pints of blood in their body.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _cardBackground() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.red[900],
      image: DecorationImage(
        image: AssetImage('assets/factOfTheDayBackground.jfif'),
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.7),
          BlendMode.dstATop,
        ),
      ),
    );
  }
}

class _HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const BackgroundGradient(),
        DonationsLivesSavedRow(),
        NextDonationWindow(),
        DonateButton(),
      ],
    );
  }
}

class LastDonationCard extends StatelessWidget {
  /// Last donation card.
  const LastDonationCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        leading: Icon(Icons.timelapse, size: 40, color: Colors.red),
        title: Text(
          "Last Donation Date",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "14 Augest 2020",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      ),
    );
  }
}
