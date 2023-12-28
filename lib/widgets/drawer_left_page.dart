import 'package:flutter/material.dart';
import '../pages/user_info_page.dart';
import '../fonts/social_platform_icon.dart';

class DrawerLeftPage extends StatefulWidget {
  final String headImageUrl;
  final bool isAssetsHead;
  final bool isAssetsBg;
  final String backgroundImageUrl;
  final String userName;
  final String userEmail;
  const DrawerLeftPage(
      {super.key,
      required this.headImageUrl,
      required this.isAssetsHead,
      required this.isAssetsBg,
      required this.backgroundImageUrl,
      required this.userName,
      required this.userEmail});

  @override
  State<DrawerLeftPage> createState() => _DrawerLeftPageState();
}

class _DrawerLeftPageState extends State<DrawerLeftPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(widget.userName),
                accountEmail: Text(widget.userEmail),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: widget.isAssetsHead
                      ? AssetImage(widget.headImageUrl) as ImageProvider
                      : NetworkImage(widget.headImageUrl),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: widget.isAssetsBg
                          ? AssetImage(widget.backgroundImageUrl)
                              as ImageProvider
                          : NetworkImage(widget.backgroundImageUrl),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                  child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                children: <Widget>[
                  ListTile(
                    title: ElevatedButton(
                        style: const ButtonStyle(
                          alignment: Alignment.centerLeft,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const UserInfoPage();
                          }));
                        },
                        child: const Row(
                          children: [
                            Icon(SocialPlatformIcon.user),
                            Text("个人信息")
                          ],
                        )),
                  ),
                  ListTile(
                    title: ElevatedButton(
                        style: const ButtonStyle(
                          alignment: Alignment.centerLeft,
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [Icon(Icons.settings), Text("设置中心")],
                        )),
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
