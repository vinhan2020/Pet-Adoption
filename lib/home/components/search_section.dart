// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Search For A Pet",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Search",
              fillColor: Colors.grey.withOpacity(0.2),
              filled: true,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
