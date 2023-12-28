import 'package:flutter/material.dart';
import '../../fonts/social_platform_icon.dart';

class AddBlogPage extends StatefulWidget {
  const AddBlogPage({super.key});

  @override
  State<AddBlogPage> createState() => _AddBlogPageState();
}

class _AddBlogPageState extends State<AddBlogPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(SocialPlatformIcon.back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        title: const Text("创作博文"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "发布",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ))
        ],
      ),
    );
  }
}
