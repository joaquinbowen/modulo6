class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String email;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'email': email,
    };
  }
}
