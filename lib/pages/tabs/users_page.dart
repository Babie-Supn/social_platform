import 'package:flutter/material.dart';
import '../user_info_page.dart';
import '../../data/person_data.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          stretch: true,
          pinned: true,
          expandedHeight: 200,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          actions: const <Widget>[
            // IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            EndDrawerButton()
          ],
          flexibleSpace: Stack(
            children: [
              FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: personData[0]["isAssetsBg"]
                    ? Image.asset(
                        personData[0]["backgroundImageUrl"],
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        personData[0]["backgroundImageUrl"],
                        fit: BoxFit.cover,
                      ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16))),
                ),
              )
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(1),
                  height: 80,
                  width: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: CircleAvatar(
                    backgroundImage: personData[0]["isAssetsHead"]
                        ? AssetImage(personData[0]["headImageUrl"])
                            as ImageProvider
                        : NetworkImage(personData[0]["headImageUrl"]),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 80,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        personData[0]["userName"],
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Uid: ${personData[0]["userID"]}",
                        style: const TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Divider(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const UserInfoPage();
                      }),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.onBackground),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  child: const Text("编辑资料"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.onBackground),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  child: const Text("分享主页"),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
