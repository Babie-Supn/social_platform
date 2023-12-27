import 'package:flutter/material.dart';
import '../pages/user_info_page.dart';

class DrawerLeftPage extends StatefulWidget {
  const DrawerLeftPage({super.key});

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
              const UserAccountsDrawerHeader(
                accountName: Text("xxx"),
                accountEmail: Text("xxxx"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.itying.com/images/flutter/2.png'),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.itying.com/images/flutter/2.png'),
                        fit: BoxFit.cover)),
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
                          children: [Icon(Icons.people), Text("个人信息")],
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
