// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/size_config.dart';

import '../model/pets.dart';

class DescriptionPet extends StatelessWidget {
  const DescriptionPet({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20), vertical: getProportionateScreenHeight(20)),
      child: Text(
        pet.description,
        maxLines: 4,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

