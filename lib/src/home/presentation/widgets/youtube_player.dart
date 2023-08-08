import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../data/datasources/video_source.dart';

YoutubePlayer youtubePlayerWidget() {
  return YoutubePlayer(
    controller: YoutubePlayerController(
      initialVideoId: youtubeVideoID,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        hideThumbnail: true,
        mute: false,
      ),
    ),
    showVideoProgressIndicator: true,
  );
}
