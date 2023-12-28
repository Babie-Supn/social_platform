import 'package:social_platform/index.dart';

void main() async {
  runApp(
    ProviderScope(
      overrides: [
        persistenceProvider.overrideWithValue(
          await Persistence.init(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
    );
    final darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const AllPages(),
    );
  }
}

class AllPages extends StatefulWidget {
  const AllPages({super.key});

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  @override
  Widget build(BuildContext context) {
    return TabsPage();
  }
}
