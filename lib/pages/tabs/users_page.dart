import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
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
                background: Image.network(
                  "https://www.itying.com/images/flutter/3.png",
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
          )
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(24),
          //   child: Container(
          //     width: double.infinity,
          //     decoration: const BoxDecoration(
          //         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          //         color: Colors.red),
          //   ),
          // ),
          ),
      // SliverToBoxAdapter(
      //   child: Container(
      //     decoration: const BoxDecoration(
      //         color: Colors.red,
      //         borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      //     height: 100,
      //     child: const Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [],
      //     ),
      //   ),
      // )
    ]));
  }
}
