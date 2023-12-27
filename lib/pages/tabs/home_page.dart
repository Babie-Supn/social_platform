import 'package:flutter/material.dart';
import '../search_page.dart';
import '../../widgets/drawer_left_page.dart';
import '../../widgets/video_page.dart';

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
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerLeftPage(),
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
                icon: const Icon(Icons.search)),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListView(
          children: const [Text("推荐card")],
        ),
        const VideoPage(),
      ]),
    );
  }
}
