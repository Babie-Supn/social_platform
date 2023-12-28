import 'package:flutter/material.dart';
import 'package:social_platform/pages/tabs_page.dart';
import 'package:social_platform/widgets/simple_list_dialog_widget.dart';
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
        //按钮在这了，靠你了^_^
        //
        //
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "保存",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              )),
        ],
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          //这里输入用户名了，需要持久化
                          //不过那个提交按钮需要吗，我写一个保存按钮，但我不知道怎么实现功能，靠你了^_^
                          //
                          //
                          child: TextField(
                            style: const TextStyle(
                                fontSize: 15, overflow: TextOverflow.clip),
                            controller: _unameController,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 12),
                              prefixIcon: Icon(SocialPlatformIcon.user),
                              hintText: "请输入你的用户名",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.background,
                        height: 0.5,
                      ),
                      const SizedBox(
                        height: 45,
                        child: SimpleListDialogWidget(),
                      ),
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
