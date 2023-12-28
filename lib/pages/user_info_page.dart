import 'package:flutter/material.dart';
import 'package:social_platform/pages/tabs_page.dart';
import '../fonts/social_platform_icon.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  //Text的Controller
  final TextEditingController _unameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(SocialPlatformIcon.back),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (BuildContext context) {
              return TabsPage(
                indexCount: 1,
              );
            }), (route) => false);
          },
        ),
        title: const Text("编辑资料"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 330,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onBackground,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: 50,
                        child: TextField(
                          style: const TextStyle(
                              fontSize: 15, overflow: TextOverflow.clip),
                          maxLength: 20,
                          controller: _unameController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(SocialPlatformIcon.user),
                            hintText: "请输入你的用户名",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.background,
                        height: 0.5,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
