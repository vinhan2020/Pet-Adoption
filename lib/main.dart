import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo_2/home/home_screen.dart';
import 'package:flutter_demo_2/route.dart';

import 'components/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Pet',
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      routes: route,
    );
  }
}
