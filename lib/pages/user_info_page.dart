import 'package:flutter/material.dart';
import 'package:social_platform/pages/tabs_page.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.back_hand),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (BuildContext context) {
              //这里到时候传参
              return TabsPage(
                indexCount: 1,
              );
            }), (route) => false);
          },
        ),
      ),
    );
  }
}
