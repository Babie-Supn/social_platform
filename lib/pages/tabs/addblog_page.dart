import 'package:flutter/material.dart';

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
          icon: const Icon(
            Icons.back_hand,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("创作博文"),
        centerTitle: true,
      ),
    );
  }
}
