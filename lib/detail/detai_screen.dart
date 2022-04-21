
import 'package:flutter/material.dart';
import 'package:flutter_demo_2/detail/body.dart';
import 'package:flutter_demo_2/model/pets.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PetDetailArgument argPet = 
        ModalRoute.of(context)!.settings.arguments as PetDetailArgument;
    return Scaffold(
      body: Body(pet: argPet.pet,)
    );
  }
}

class PetDetailArgument {
  final Pet pet;
  PetDetailArgument({required this.pet});
}
