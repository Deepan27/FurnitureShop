class Furniture {
  final String name;
  final String price;
  final String imageUrl;

  Furniture({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  factory Furniture.fromMap(Map<String, dynamic> map) {
    return Furniture(
      imageUrl: map['imageUrl'],
      name: map['name'],
      price: map['price'],
    );
  }
}
