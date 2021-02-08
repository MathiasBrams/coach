import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class VideoScreen extends StatelessWidget {
  const VideoScreen({
    Key key,
  }) : super(key: key);



  
  @override
  Widget build(BuildContext context) {

    // controller for youtube plugin
    YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '60pU4V0nTIk',
    flags: YoutubePlayerFlags(
      autoPlay: false,
    )
    );

    return Container(
    color: Colors.grey[200],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(50.0),
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
    ),
      )
    );
  }
}