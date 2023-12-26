# social_platform

A new Flutter project.A simple social software

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Note

- 实现路由跳转

  - push 跳转
  - pop 返回上一页，也是栈的存储
  - 路由也可以传值，只要跳转的页面设置了接收值即可

  - 基本路由跳转

  ```dart
  Navigator.of(context) .push(MaterialPageRoute(builder: (BuildContext context) {
     return const SearchPage();
     }));
  ```

  - 命名路由跳转

  ```dart
  不传值的
  Navigator.pushNamed(context,"/xxx");
  xxx要跳转的路由

  ```

  - 命名路由传值

    - 首先需要将 route 的 Map 移出成一个 map 对象

    ```dart
    Map routes={
      "/":(context) => const Xxx(),
      "/xxx":(context) => const Xxx(),
      ···
      "/xxx":(context,{arguments}){
        return Xxx(arguments:arguments);
      },
      "/xxx":(context,arguments) => Xxx(arguments:arguments)
    }
    ```

    - 再在 MaterialApp 中调用`onGenerateRoute`处理

    ```dart
    固定写法：
    onGenerateRoute:(RouteSettings settings) {
      final String? name = settings.name;
      final Function? pageContentBuilder = routes[name];
      if(pageContentBuilder != null){
        if(settings.arguments != null){
          final Route route = MaterialPageRoute(
            builder:(context)=>pageContentBuilder(context,arguments:settings.arguments)
            );
            return route;
            }else{
            final Route route = MaterialPageRoute(
              builder:(context) =>pageContentBuilder(context)
            );
            return route;
          }
      }
    }
    ```

    - 需要在跳转的界面设置接收值，`Map arguments`

  ```dart
  Navigator.pushNamed(context,"/xxx",arguments:{xxx})
  ```
