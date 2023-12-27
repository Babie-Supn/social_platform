import 'package:flutter/material.dart';
import 'package:social_platform/pages/tabs_page.dart';
// import './pages/tabs/users_page.dart';
import './theme/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final theme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
  );
  final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const AllPages(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => TabsPage(),
      //   "/user": (context) => const UsersPage()
      // },
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
