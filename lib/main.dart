import 'package:flutter/material.dart';
import 'package:social_platform/pages/tabs.dart';
import './pages/tabs/users_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      // home: const AllPages(),
      initialRoute: "/",
      routes: {
        "/": (context) => TabsPage(),
        "/user": (context) => const UsersPage()
      },
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
