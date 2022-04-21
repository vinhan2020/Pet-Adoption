// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/constains.dart';
import 'package:flutter_demo_2/size_config.dart';

class ButtonAdoption extends StatelessWidget {
  const ButtonAdoption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFFF4F5F9),
              ),
              child: Image.asset(
                "assets/images/power-off.png",
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,0),
                    blurRadius: 10, color: kprimaryColor
                  )
                ],
                borderRadius: BorderRadius.circular(16),
                color: kprimaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/paw.png"),
                  Text(
                    "Adoption",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
