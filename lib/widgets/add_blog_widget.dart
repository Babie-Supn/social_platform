import 'package:flutter/material.dart';
import '../fonts/social_platform_icon.dart';

class AddBlogWidget extends StatefulWidget {
  const AddBlogWidget({super.key});

  @override
  State<AddBlogWidget> createState() => _AddBlogWidgetState();
}

class _AddBlogWidgetState extends State<AddBlogWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
            height: 400,
            width: 360,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground),
            child: const Column(
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                        hintText: "分享今日开心事...", border: InputBorder.none),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
