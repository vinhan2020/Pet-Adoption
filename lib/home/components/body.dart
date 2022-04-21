// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'categories.dart';
import 'pet_elements.dart';
import 'search_section.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            Categories(),
            PetElements(),
          ],
        ),
      ),
    );
  }
}
