import 'package:social_platform/index.dart';

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
    return TextButton(
      onPressed: () {
        _simpleDialog();
      },
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
