// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/size_config.dart';

class MenuFunction extends StatelessWidget {
  const MenuFunction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildItemFunc("assets/images/paw.png", "Adoption"),
          buildItemFunc("assets/images/donation.png", "Donation"),
          buildItemFunc("assets/images/add.png", "Add Pet"),
          buildItemFunc("assets/images/heart.png", "Favourites"),
          buildItemFunc("assets/images/email.png", "Messages"),
          buildItemFunc("assets/images/user.png", "Profile"),
        ],
      ),
    );
  }

  TextButton buildItemFunc(final String icon, label) {
    return TextButton(
        onPressed: () {},
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(10)),
          child: SizedBox(
            height: 30,
            child: Row(
              children: [
                Image.asset(icon),
                SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
