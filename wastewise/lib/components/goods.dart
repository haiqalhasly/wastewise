// ignore_for_file: camel_case_types, constant_identifier_names

class Goods {
  final String name;
  final String description;
  final String category;
  final String image;
  final String price;
  final String expiredDate;
  final String quantity;

  Goods({
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.expiredDate,
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
