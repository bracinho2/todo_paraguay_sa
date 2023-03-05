import '../../domain/entities/carroucel_entity.dart';

class CarroucelMapper {
  static CarroucelEntity fromMap(Map<String, dynamic> map) {
    return CarroucelEntity(
      id: int.parse(map['id']),
      name: map['name'],
      category: map['category'],
      message: map['message'],
      url: map['url'],
      published: DateTime.parse(map['published']),
      expiresAt: DateTime.parse(map['expiresAt']),
      exhibitionDays: map['exhibitionDays'],
    );
  }
}
