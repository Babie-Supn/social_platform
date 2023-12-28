import 'package:social_platform/index.dart';

class UserInfoPage extends ConsumerStatefulWidget {
  const UserInfoPage({super.key});

  @override
  ConsumerState<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends ConsumerState<UserInfoPage> {
  //Text的Controller
  late final TextEditingController _nameController = TextEditingController(
    text: ref.watch(localStoreProvider).name,
  );

  @override
  Widget build(BuildContext context) {
    final setLocalStore = ref.watch(localStoreProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(SocialPlatformIcon.back),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (BuildContext context) {
              return TabsPage(
                indexCount: 1,
              );
            }), (route) => false);
          },
        ),
        title: const Text("编辑资料"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        actions: [
          TextButton(
            onPressed: () {
              setLocalStore.setName(_nameController.text);
            },
            child: Text(
              "保存",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 330,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: TextField(
                            style: const TextStyle(
                                fontSize: 15, overflow: TextOverflow.clip),
                            controller: _nameController,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 12),
                              prefixIcon: Icon(SocialPlatformIcon.user),
                              hintText: "请输入你的用户名",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.background,
                        height: 0.5,
                      ),
                      const SizedBox(
                        height: 45,
                        child: SelectGenderButton(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
