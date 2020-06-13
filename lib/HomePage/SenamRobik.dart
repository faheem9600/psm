import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'chewie_list_item.dart';


class VideoSenamrobik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jom Senamrobik'),
      ),
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              "images/senamrobik.3gp",
            ),
            looping: true,
          ),
          
        ],
      ),
    );
  }
}