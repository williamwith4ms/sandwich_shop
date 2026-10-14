class Sandwich {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  const Sandwich({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  String get formattedPrice {
    final String formattedValue = price.toStringAsFixed(2);
    return '£$formattedValue';
  }
}
