import 'package:social_platform/index.dart';

class VideoItemPageWidget extends StatefulWidget {
  final VideoPlayerController controller;
  const VideoItemPageWidget({super.key, required this.controller});

  @override
  State<VideoItemPageWidget> createState() => _VideoItemPageWidgetState();
}

class _VideoItemPageWidgetState extends State<VideoItemPageWidget> {
  VideoPlayerController? get _controller => widget.controller;

  bool initialized = false; //判断是否初始化

  void _videoControllerUpdate() {
    if (mounted) {
      if (initialized != _controller!.value.isInitialized) {
        initialized = _controller!.value.isInitialized;
        setState(() {});
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller!.addListener(_videoControllerUpdate);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller!.removeListener(_videoControllerUpdate);
  }

  @override
  Widget build(BuildContext context) {
    if (initialized) {
      return Center(
        child: AspectRatio(
          aspectRatio: _controller!.value.aspectRatio,
          child: VideoPlayer(_controller!),
        ),
      );
    }
    return Container();
  }
}
