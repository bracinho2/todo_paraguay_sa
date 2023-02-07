class BestPriceEntity {
  final int id;
  final String name;
  final String description;
  final double price;
  final int quantity;
  final DateTime published;
  final DateTime expiresAt;

  BestPriceEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.published,
    required this.expiresAt,
  });
}
