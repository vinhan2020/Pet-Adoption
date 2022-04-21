
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../size_config.dart';

class AvatarRounded extends StatelessWidget {
  const AvatarRounded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/owner.png",
          height: 45,
        ),
        Padding(
          padding:
              EdgeInsets.only(left: getProportionateScreenHeight(20)),
          child: Text.rich(
            TextSpan(
              text: "Ryan Raynor\n",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 1,
              ),
              children: [
                TextSpan(
                    text: "Active Status",
                    style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
