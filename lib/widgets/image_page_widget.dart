import 'package:flutter/material.dart';

class ImagePageWidget extends StatefulWidget {
  final String imageUrl;
  const ImagePageWidget({super.key, required this.imageUrl});

  @override
  State<ImagePageWidget> createState() => _ImagePageWidgetState();
}

class _ImagePageWidgetState extends State<ImagePageWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.network(
        widget.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
