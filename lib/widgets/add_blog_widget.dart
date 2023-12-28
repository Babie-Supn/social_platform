import 'package:flutter/material.dart';

class AddBlogWidget extends StatefulWidget {
  const AddBlogWidget({super.key});

  @override
  State<AddBlogWidget> createState() => _AddBlogWidgetState();
}

class _AddBlogWidgetState extends State<AddBlogWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 30,
        ),
        SizedBox()
      ],
    );
  }
}
