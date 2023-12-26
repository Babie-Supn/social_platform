import 'package:flutter/material.dart';
import "../pages/tabs/users_page.dart";

//配置路由
Map routes = {
  //有参
  // "/user": (context, arguments) => UsersPage(arguments),
  //无参
  "/user": (context) => const UsersPage(),
};

//配置onGenerateRoute

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
