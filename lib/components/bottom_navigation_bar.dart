// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/constains.dart';
import 'package:flutter_demo_2/detail/detai_screen.dart';
import 'package:flutter_demo_2/size_config.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavifgationBar extends StatelessWidget {
  const BottomNavifgationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(70),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, 0), color: Colors.grey, blurRadius: 10)
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 253, 149, 184).withOpacity(0.2),
                blurRadius: 5.0,
              ),
            ]),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: Icon(
                Icons.home,
                color: kprimaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 253, 149, 184).withOpacity(0.2),
                blurRadius: 5.0,
              ),
            ]),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: Icon(
                Icons.favorite,
                color: kprimaryColor,
              ),
            ),
          ),
         Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 253, 149, 184).withOpacity(0.2),
                blurRadius: 5.0,
              ),
            ]),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: Icon(
                Icons.add,
                color: kprimaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 253, 149, 184).withOpacity(0.2),
                blurRadius: 5.0,
              ),
            ]),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: kprimaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 253, 149, 184).withOpacity(0.2),
                blurRadius: 5.0,
              ),
            ]),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, DetailScreen.routeName);
                },
                child: SvgPicture.asset(
                  "assets/icons/User.svg",
                  color: kprimaryColor,
                )),
          ),
        ],
      ),
    );
  }
}
