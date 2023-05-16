import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Body extends StatefulWidget {
  final String videoId;

  const Body({required this.videoId});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late YoutubePlayerController _controller;
  final videoURL = "https://www.youtube.com/watch?v=dQl_vMRMjCI&t=173s";

  @override
  void initState() {
    final muVideoId = YoutubePlayer.convertUrlToId(videoURL);
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: videoURL,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YoutubePlayer(
          controller: _controller,
          onReady: () {
            // Perform any necessary operations when the player is ready.
          },
        ),
        Expanded(
          child: ListView(
            children: [
              // Display comments here
              ListTile(
                title: Text('Viewer comment 1'),
              ),
              ListTile(
                title: Text('Viewer comment 2'),
              ),
              // Add more ListTiles for additional comments
            ],
          ),
        ),
        Divider(height: 1),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Add a comment',
                  ),
                  onFieldSubmitted: (comment) {
                    // Perform any necessary operations when a comment is submitted.
                    setState(() {
                      // Add the comment to the list of comments for display.
                    });
                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  // Perform any necessary operations when the send button is pressed.
                  setState(() {
                    // Add the comment to the list of comments for display.
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
