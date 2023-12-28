import 'package:flutter/material.dart';
import 'package:social_platform/widgets/card_page_widget.dart';
import '../search_page.dart';
import '../../widgets/drawer_left_page.dart';
import '../../widgets/video_page.dart';
import '../../fonts/social_platform_icon.dart';
import '../../data/follow_list.dart';
import '../../data/person_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerLeftPage(
          headImageUrl: personData[0]["headImageUrl"],
          isAssetsHead: personData[0]["isAssetsHead"],
          isAssetsBg: personData[0]["isAssetsBg"],
          backgroundImageUrl: personData[0]["backgroundImageUrl"],
          userName: personData[0]["userName"],
          userEmail: personData[0]["userEmail"]),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: TabBar(
            dividerHeight: 0.5,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text("关注"),
              ),
              Tab(
                child: Text("视频"),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  //跳转路由
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SearchPage();
                  }));
                },
                icon: const Icon(SocialPlatformIcon.search)),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListView(
          children: followInfoList.map((e) {
            return CardPageWidget(
                headPhotoUrl: e["headImageUrl"],
                imageUrlList: e["userUpImage"],
                userName: e["userName"],
                imageHeight: e["imageHeight"],
                isAssetsHead: e["isAssetsHead"],
                isAssetsList: e["isAssetsList"]);
          }).toList(),
        ),
        const VideoPage(),
      ]),
    );
  }
}
