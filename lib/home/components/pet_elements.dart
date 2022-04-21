// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/components/rating_star_bar.dart';
import 'package:flutter_demo_2/detail/detai_screen.dart';
import 'package:flutter_demo_2/size_config.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/pets.dart';

class PetElements extends StatelessWidget {
  const PetElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          pets.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailScreen.routeName,
                    arguments: PetDetailArgument(pet: pets[index]));
              },
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(0.3))
                        ],
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                                color: pets[index].color,
                                borderRadius: BorderRadius.circular(16)),
                            child: Image.asset(pets[index].image),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenHeight(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pets[index].name,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  pets[index].description,
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                RatingStar(),
                                Text(
                                  '\$${pets[index].price}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 20,
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      height: 15,
                      color: pets[index].isFavoutite
                          ? Colors.red
                          : Colors.grey.withOpacity(0.3),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
