// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SimpleListDialogWidget extends StatefulWidget {
  const SimpleListDialogWidget({super.key});

  @override
  State<SimpleListDialogWidget> createState() => _SimpleListDialogWidgetState();
}

class _SimpleListDialogWidgetState extends State<SimpleListDialogWidget> {
  void _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            alignment: Alignment.bottomCenter,
            title: const Text(
              "请选择性别",
              style: TextStyle(fontSize: 15),
            ),
            surfaceTintColor: Theme.of(context).colorScheme.background,
            titlePadding: const EdgeInsets.fromLTRB(100, 10, 0, 0),
            contentPadding: const EdgeInsets.symmetric(horizontal: 100),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "女");
                },
                child: const Text("女"),
              ),
              Divider(
                height: 0.5,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "男");
                },
                child: const Text("男"),
              )
            ],
          );
        });
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _simpleDialog();
      },
      //隆子，这里ElevatedButton的样式怎么去掉呀，太丑了 ^_^
      // 我给他设置一下圆角边框,又有类报错 T_T,靠你了
      //
      // style: const ButtonStyle(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Row(
        children: [
          Text(
            "性别",
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface, fontSize: 13),
          ),
          const SizedBox(
            width: 10,
          )
          //隆子，这里请帮帮我加一个可以显示性别选择后结果显示的文本,要持久化滴
          //
          //
          //
        ],
      ),
    );
  }
}
