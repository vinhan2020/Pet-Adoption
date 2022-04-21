// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pet {
  final String name;
  final String age;
  final String description;
  final String image;
  final double price;
  final double rating;
  final String gender;
  final double strenth;
  final bool isFavoutite;
  final Color color;
  final String colorStr;
  Pet({
    required this.name,
    required this.age,
    required this.description,
    required this.image,
    required this.price,
    required this.gender,
    required this.strenth,
    required this.rating,
    required this.colorStr,
    required this.color,
    required this.isFavoutite,
  });
}

List<Pet> pets = [
  Pet(
      name: "Husky Ngáo",
      age: "2",
      description: description,
      image: "assets/images/dog.png",
      price: 80,
      rating: 4,
      gender: "Male",
      colorStr: "White",
      strenth: 5.3,
      isFavoutite: true,
      color: Color(0xFFFFEEAD)),
  Pet(
      name: "Pull Cute",
      age: "1",
      description: description,
      image: "assets/images/pull.png",
      price: 60,
      colorStr: "White",
      rating: 5,
      gender: "Male",
      isFavoutite: true,
      strenth: 3.2,
      color: Color(0xFF74CFCE)),
  Pet(
      name: "Corgi Big Ass",
      age: "3",
      description: description,
      image: "assets/images/corgi.png",
      price: 100,
      rating: 4,
      gender: "FeMale",
      colorStr: "Yellow",
      strenth: 4,
      isFavoutite: false,
      color: Color(0xFFFFAD60)),
  Pet(
      name: "Corgi Big Ass",
      age: "3",
      description: description,
      image: "assets/images/corgi.png",
      price: 100,
      rating: 4,
      gender: "FeMale",
      colorStr: "Yellow",
      strenth: 4,
      isFavoutite: false,
      color: Color(0xFFFFAD60)),
  Pet(
      name: "Corgi Big Ass",
      age: "3",
      description: description,
      image: "assets/images/corgi.png",
      price: 100,
      rating: 4,
      gender: "FeMale",
      colorStr: "Yellow",
      strenth: 4,
      isFavoutite: false,
      color: Color(0xFFFFAD60)),
];
const String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting";
