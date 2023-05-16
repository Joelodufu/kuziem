import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LiveClassScreen extends StatelessWidget {
  const LiveClassScreen({super.key, required this.videoUrl});
  final String videoUrl;
  @override
  Widget build(BuildContext context) {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    return Scaffold(
      body: Body(
        videoId: videoId!,
      ),
    );
  }
}
