import '../../domain/entities/dashboard_banner_entity.dart';

class CarroucelMapper {
  static DashBoardBannerEntity fromMap(Map<String, dynamic> map) {
    return DashBoardBannerEntity(
      id: map['id'],
      bannerName: map['bannerName'],
      bannerUrl: map['bannerUrl'],
      published: DateTime.parse(map['published']),
      exhibitionDays: map['exhibitionDays'],
      aproved: map['aproved'],
    );
  }
}
