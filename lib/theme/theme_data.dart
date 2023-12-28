import 'package:social_platform/index.dart';

// 亮色主题
const lightColorScheme = ColorScheme(
  brightness: Brightness.light, //亮度
  primary: Color(0xFFF03167), //普通按钮前景色
  onPrimary: Color(0x8FF03167), //
  secondary: Color(0xFFFF779f),
  onSecondary: Color(0xFFFF77A0),
  error: Color(0xFFED5501),
  onError: Color(0xE1ED5401),
  background: Color(0xFFF4F6F9), //主要容器背景色
  onBackground: Color(0xFFFFFFFF),
  surface: Color(0xFFF7F8FD), //标题栏和卡片背景颜色
  onSurface: Color(0xD4464748),
); //最基础字体色

// 暗色主题
const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF974EC3),
  onPrimary: Color(0xFF974EC3),
  secondary: Color(0xFF974EC3),
  onSecondary: Color(0xBC964EC3),
  error: Color(0xFFED5501),
  onError: Color(0xE1ED5401),
  background: Color(0xFF1A1A1A),
  onBackground: Color(0xD31A1A1A),
  surface: Color(0xFF3B3939),
  onSurface: Color(0xFFFAF7F4),
);
