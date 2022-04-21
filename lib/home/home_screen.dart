// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/home/components/body.dart';
import 'package:flutter_demo_2/menu/menu_screen.dart';
import 'package:flutter_demo_2/size_config.dart';
import '../components/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MenuScreen.routeName);
              },
              child: Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/images/avata-300x300.png",
                ),
              ),
            ),
          )
        ],
      ),
      body: Body(),
      bottomNavigationBar: BottomNavifgationBar(),
    );
  }
}
