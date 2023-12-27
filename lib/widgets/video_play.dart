import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  final String assetUrl;
  const VideoPlay({super.key, required this.assetUrl});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    // 加载本地视频
    _videoPlayerController = VideoPlayerController.asset(widget.assetUrl);
    await Future.wait([_videoPlayerController.initialize()]);
    //初始化ChewieController
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 9 / 16, //纵向设置，横向设置为9/16
      autoPlay: true, //视频是否自动播放
      looping: true, //视频是否循环播放
      autoInitialize: true, //视频是否自动初始化
      hideControlsTimer: const Duration(seconds: 1),
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(controller: _chewieController);
  }
}