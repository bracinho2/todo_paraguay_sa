enum CarroucelCategory {
  announcement,
  comunication,
  donation,
}

class CarroucelEntity {
  final int id;
  final String name;
  final String category;
  final String message;
  final String url;
  final DateTime published;
  final DateTime expiresAt;
  final int exhibitionDays;

  CarroucelEntity({
    required this.id,
    required this.name,
    required this.category,
    required this.message,
    required this.url,
    required this.published,
    required this.expiresAt,
    required this.exhibitionDays,
  });
}
