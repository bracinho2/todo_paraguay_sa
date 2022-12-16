import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/domain/entities/banner_promo_entity.dart';

class BannerPromoMapper {
  static BannerPromoEntity fromMap(Map<String, dynamic> map) {
    return BannerPromoEntity(
      category: map['category'],
      description: map['description'],
      link: map['link'],
    );
  }
}
