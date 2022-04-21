import 'package:flutter/widgets.dart';
import 'package:flutter_demo_2/detail/detai_screen.dart';
import 'package:flutter_demo_2/home/home_screen.dart';
import 'package:flutter_demo_2/menu/menu_screen.dart';

final Map<String, WidgetBuilder> route = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  MenuScreen.routeName: (context)=> MenuScreen()
};
