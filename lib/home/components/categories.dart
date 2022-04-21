// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/model/categories.dart';
import '../../constains.dart';
import '../../size_config.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            categories.length,
            (index) => buildCategory(index),
          )
        ],
      ),
    );
  }

  SizedBox buildCategory(int index) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Padding(
          padding:  EdgeInsets.only(right: 20),
          child: Container(
            width: getProportionateScreenWidth(80),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: _selectedIndex == index
                  ? kprimaryColor
                  : Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Image.asset(
                  categories[index].logoImage,
                  height: 35,
                  color: _selectedIndex == index ? Colors.white : Colors.black,
                ),
                Text(
                  categories[index].label,
                  style: TextStyle(
                      color:
                          _selectedIndex == index ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
