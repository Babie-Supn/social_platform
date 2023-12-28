import 'package:flutter/material.dart';

class ImagePageWidget extends StatefulWidget {
  final String assetsImgUrl;
  final String netImgUrl;
  const ImagePageWidget(
      {super.key, this.assetsImgUrl = "", this.netImgUrl = ""});

  @override
  State<ImagePageWidget> createState() => _ImagePageWidgetState();
}

class _ImagePageWidgetState extends State<ImagePageWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: widget.assetsImgUrl != ""
          ? Image.asset(
              widget.assetsImgUrl,
              fit: BoxFit.cover,
            )
          : Image.network(
              widget.netImgUrl,
              fit: BoxFit.cover,
            ),
    );
  }
}
