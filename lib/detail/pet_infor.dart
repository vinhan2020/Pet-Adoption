// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/size_config.dart';

import '../components/rating_star_bar.dart';
import '../model/pets.dart';

class PetInfor extends StatelessWidget {
  const PetInfor({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pet.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$${pet.price}",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              pet.description,
              maxLines: 1,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.9),
              ),
            ),
          ),
          RatingStar(),
          SizedBox(height: SizeConfig.screenHeight* 0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildButtonRounded("Age", pet.age),
              buildButtonRounded("Sex", pet.gender),
              buildButtonRounded("Color", pet.colorStr),
              buildButtonRoundedDouble("Strenth", pet.strenth)
            ],
          )
        ],
      ),
    );
  }

  Container buildButtonRounded(String textRed, textBlack) {
    return Container(
      height: getProportionateScreenHeight(80),
      width: getProportionateScreenWidth(70),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              textRed,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            textBlack,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
  Container buildButtonRoundedDouble(String textRed,double textBlack) {
    return Container(
      height: getProportionateScreenHeight(80),
      width: getProportionateScreenWidth(70),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              textRed,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
           "${pet.strenth}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}

