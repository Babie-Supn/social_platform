import 'package:flutter/material.dart';
import '../fonts/social_platform_icon.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(SocialPlatformIcon.back),
          onPressed: () {
            //返回到上一层
            Navigator.of(context).pop();
          },
        ),
        title: const TextField(
          style: TextStyle(fontSize: 15, overflow: TextOverflow.clip),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 12),
            suffixIcon: Icon(SocialPlatformIcon.search),
            hintText: "请输入搜索内容",
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
