import 'package:social_platform/index.dart';

class VideoItemPageWidget extends StatefulWidget {
  const VideoItemPageWidget({
    super.key,
    required this.controller,
  });

  final VideoPlayerController controller;

  @override
  State<VideoItemPageWidget> createState() => _VideoItemPageWidgetState();
}

class _VideoItemPageWidgetState extends State<VideoItemPageWidget> {
  VideoPlayerController get _controller => widget.controller;

  bool _initialized = false; //判断是否初始化

  void _videoControllerUpdate() {
    if (mounted) {
      if (_initialized != _controller.value.isInitialized) {
        _initialized = _controller.value.isInitialized;
        setState(() {});
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_videoControllerUpdate);
  }

  @override
  void dispose() {
    _controller.removeListener(_videoControllerUpdate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_initialized) {
      return Center(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      );
    }
    return Container();
  }
}
