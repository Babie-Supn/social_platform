import 'package:social_platform/index.dart';

class SelectGenderButton extends ConsumerStatefulWidget {
  const SelectGenderButton({super.key});

  @override
  ConsumerState<SelectGenderButton> createState() =>
      _SimpleListDialogWidgetState();
}

class _SimpleListDialogWidgetState extends ConsumerState<SelectGenderButton> {
  @override
  Widget build(BuildContext context) {
    final localStore = ref.watch(localStoreProvider);

    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const GenderSelectDialog();
          },
        );
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
          ),
          Text(localStore.gender.name),
        ],
      ),
    );
  }
}

class GenderSelectDialog extends ConsumerWidget {
  const GenderSelectDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setLocalStore = ref.watch(localStoreProvider.notifier);

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
            setLocalStore.setGender(Gender.woman);
            Navigator.pop(context);
          },
          child: const Text("女"),
        ),
        Divider(
          height: 0.5,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        SimpleDialogOption(
          onPressed: () {
            setLocalStore.setGender(Gender.man);
            Navigator.pop(context);
          },
          child: const Text("男"),
        )
      ],
    );
  }
}
