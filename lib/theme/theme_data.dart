import 'package:flutter/material.dart';

//亮色主题
const lightColorScheme = ColorScheme(
    brightness: Brightness.light, //亮度
    primary: Color(0xFFF03167), //普通按钮前景色
    onPrimary: Color.fromRGBO(240, 49, 103, 0.564), //
    secondary: Color(0xFFFF779f),
    onSecondary: Color.fromARGB(255, 255, 119, 160),
    error: Color(0xFFED5501),
    onError: Color.fromARGB(226, 237, 84, 1),
    background: Color(0xFFF4F6F9), //主要容器背景色
    onBackground: Color.fromARGB(255, 255, 255, 255),
    surface: Color(0xFFF7F8FD), //标题栏和卡片背景颜色
    onSurface: Color(0xFF464748)); //最基础字体色

//暗色主题  Color.fromARGB(206, 254, 123, 191)
const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF974EC3),
    onPrimary: Color(0xFF974EC3),
    secondary: Color(0xFF974EC3),
    onSecondary: Color.fromARGB(189, 150, 78, 195),
    error: Color(0xFFED5501),
    onError: Color.fromARGB(226, 237, 84, 1),
    background: Color(0xFF1A1A1A),
    onBackground: Color.fromARGB(212, 26, 26, 26),
    surface: Color(0xFF3B3939),
    onSurface: Color(0xFFFAF7F4));
