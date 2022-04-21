// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/constains.dart';
import 'package:flutter_demo_2/size_config.dart';

import 'avatar_rounded.dart';
import 'menu_function.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kprimaryColor,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: AvatarRounded()),
            Expanded(flex: 5, child: MenuFunction()),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 20,),
                    SizedBox(
                      width: 2,
                      height: 20,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "Log out",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
