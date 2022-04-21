// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo_2/size_config.dart';
import '../components/top_rounded.dart';
import '../model/pets.dart';
import 'button_adoption.dart';
import 'description_pet.dart';
import 'owner_infor.dart';
import 'pet_image.dart';
import 'pet_infor.dart';

class Body extends StatelessWidget {
  final Pet pet;
  const Body({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: pet.color,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                PetImage(pet: pet),
                TopRounded(
                  child: Column(
                    children: [
                      PetInfor(pet: pet),
                      OwnerInfor(),
                      DescriptionPet(pet: pet),
                      ButtonAdoption()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        )
      ],
    );
  }
}
