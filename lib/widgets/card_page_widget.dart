import 'package:flutter/material.dart';
import 'package:social_platform/widgets/image_page_widget.dart';
import '../fonts/social_platform_icon.dart';

class CardPageWidget extends StatefulWidget {
  final String headPhotoUrl;
  final List<String> imageUrlList;
  const CardPageWidget(
      {super.key, required this.headPhotoUrl, required this.imageUrlList});

  @override
  State<CardPageWidget> createState() => _CardPageWidgetState();
}

class _CardPageWidgetState extends State<CardPageWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(widget.headPhotoUrl),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("UserName"),
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: PageView(
                  children: widget.imageUrlList.map((e) {
                return ImagePageWidget(imageUrl: e);
              }).toList()),
            ),
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(SocialPlatformIcon.share)),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(SocialPlatformIcon.heart)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(SocialPlatformIcon.star)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(SocialPlatformIcon.comment))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
