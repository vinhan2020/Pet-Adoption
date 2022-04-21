// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/constains.dart';
import 'package:flutter_demo_2/size_config.dart';

class OwnerInfor extends StatelessWidget {
  const OwnerInfor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
      child: SizedBox(
        height: 80,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 235, 170),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Ryan Raynor\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: "Male",
                          style: TextStyle(
                            fontSize: 16,
                            color: kprimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "235km",
                    style: TextStyle(
                      color: kprimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 18,
              left: -20,
              child: Container(
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(40),
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("assets/images/owner.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
