// ignore_for_file: avoid_print, must_be_immutable, must_call_super

import 'package:flutter/material.dart';
import './tabs/addblog_page.dart';
import './tabs/home_page.dart';
import './tabs/users_page.dart';
import '../fonts/social_platform_icon.dart';

class TabsPage extends StatefulWidget {
  int indexCount = 0;
  TabsPage({super.key, this.indexCount = 0});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  late int _index;
  final List<Widget> _listPage = [
    const HomePage(),
    // const AddBlogPage(),
    const UsersPage()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _index = widget.indexCount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(SocialPlatformIcon.home), label: "首页"),
            // BottomNavigationBarItem(icon: Icon(Icons.add), label: "添加"),
            BottomNavigationBarItem(
                icon: Icon(SocialPlatformIcon.user), label: "用户")
          ]),
      floatingActionButton: Container(
        height: 55,
        width: 55,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).colorScheme.background,
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const AddBlogPage();
            }));
          },
          backgroundColor: Theme.of(context).colorScheme.background,
          child: const Icon(SocialPlatformIcon.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _listPage[_index],
    );
  }
}
