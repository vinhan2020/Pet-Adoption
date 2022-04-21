import 'package:flutter/material.dart';

import '../model/pets.dart';
import '../size_config.dart';

class PetImage extends StatelessWidget {
  const PetImage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(300),
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(pet.image),
      ),
    );
  }
}
