import 'package:social_platform/index.dart';

class CardPageWidget extends StatefulWidget {
  final String headPhotoUrl;
  final List<String> imageUrlList;
  final String userName;
  final double imageHeight;
  final bool isAssetsHead;
  final bool isAssetsList;
  const CardPageWidget(
      {super.key,
      required this.headPhotoUrl,
      required this.imageUrlList,
      required this.userName,
      required this.imageHeight,
      required this.isAssetsHead,
      required this.isAssetsList});

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
                        backgroundImage: widget.isAssetsHead
                            ? AssetImage(widget.headPhotoUrl) as ImageProvider
                            : NetworkImage(widget.headPhotoUrl),
                        // child: widget.isAssetsHead
                        //     ? Image.asset(
                        //         widget.headPhotoUrl,
                        //       )
                        //     : Image.network(
                        //         widget.headPhotoUrl,
                        //       ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(widget.userName),
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
              height: widget.imageHeight,
              child: PageView(
                  children: widget.isAssetsList
                      ? widget.imageUrlList.map((e) {
                          return ImagePageWidget(
                            assetsImgUrl: e,
                          );
                        }).toList()
                      : widget.imageUrlList.map((e) {
                          return ImagePageWidget(
                            netImgUrl: e,
                          );
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
