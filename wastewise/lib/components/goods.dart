class Goods {
  final String name;
  final String description;
  final String category;
  final String image;
  final String price;
  final String quantity;

  Goods({
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.quantity,
  });
}

enum category {
  food,
  beverages,
  health_beauty,
  medicines,
  pet_food,
  cleaning,
}
