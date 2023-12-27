import 'package:flutter/material.dart';
import 'package:social_platform/widgets/video_play.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        VideoPlay(assetUrl: 'lib/assets/video/video1.MP4'),
        Center(
          child: Text("第二个视频"),
        ),
        Center(
          child: Text("第三个视频"),
        ),
      ],
    );
  }
}
