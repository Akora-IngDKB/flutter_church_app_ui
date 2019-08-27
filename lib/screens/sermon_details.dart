import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class SermonDetails extends StatefulWidget {
  final Map<String, String> sermonDetails;

  // This map contains info about the sermon:
  SermonDetails(this.sermonDetails);

  @override
  _SermonDetailsState createState() => _SermonDetailsState();
}

class _SermonDetailsState extends State<SermonDetails> {
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // Replace the URL by the one in the Map up there: widget.sermonDetails['mediaUrl']
    _videoPlayerController = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: _videoPlayerController.value?.aspectRatio,
      autoInitialize: true,
      autoPlay: true,
      allowFullScreen: true,
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      placeholder: Container(
        color: Colors.grey,
      ),
      // The Full Screen has an issue. Will implement it once it's resolved
      // fullScreenByDefault: true,
      looping: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(widget.sermonDetails['title'])),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Center(child: Chewie(controller: _chewieController)),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
