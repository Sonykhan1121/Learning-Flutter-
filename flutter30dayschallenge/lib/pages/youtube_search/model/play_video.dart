import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/model/item_data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideo extends StatefulWidget {
  final ItemData? items;

  const PlayVideo({super.key, this.items});

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  YoutubePlayerController? _youtubePlayerController;
  @override
  void initState() {
    // TODO: implement initState
    _youtubePlayerController = YoutubePlayerController(initialVideoId: widget.items!.id!.videoId!,flags: YoutubePlayerFlags(
      mute: false,
      loop: false,
      forceHD: false,
      autoPlay: true,
      isLive: false,


    ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: YoutubePlayer(controller: _youtubePlayerController!,progressIndicatorColor: Colors.red,),
          ),
          SizedBox(height: 20,),
          Text("${widget.items!.snippet!.title}"),
          Text("${widget.items!.snippet!.description}",),
        ],
      ),
    );
  }
}
