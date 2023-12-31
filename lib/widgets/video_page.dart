import 'package:social_platform/index.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        VideoPlay(
          assetUrl: 'assets/video/video1.mp4',
        ),
        VideoPlay(
          assetUrl: 'assets/video/video2.mp4',
        ),
        VideoPlay(
          assetUrl: 'assets/video/video3.mp4',
        ),
      ],
    );
  }
}
