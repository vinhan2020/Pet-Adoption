class Category {
  final String logoImage;
  final String label;
  Category({required this.logoImage,required this.label});
}

List<Category> categories = [
  Category(
    logoImage: "assets/images/dog-logo.png",
    label: "Dog",
  ),
  Category(
    logoImage: "assets/images/cat-logo.png",
    label: "Cat",
  ),
  Category(
    logoImage: "assets/images/rabbit-logo.png",
    label: "Rabbit",
  ),
  Category(
    logoImage: "assets/images/panda-logo.png",
    label: "Panda",
  ),
];
