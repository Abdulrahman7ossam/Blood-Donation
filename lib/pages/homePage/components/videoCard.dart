import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  /// Video Decoration card at the bottom of the homepage.
  VideoCard();

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/donation_stop_motion_video.mp4')
          ..initialize().then(
            (_) {
              // Ensure the first frame is shown after the video is initialized,
              // even before the play button has been pressed.
              setState(() {
                // mute, loop, and play the video.
                _controller.setVolume(0);
                _controller.setLooping(true);
                _controller.play();
              });
            },
          );
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
