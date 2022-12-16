class BannerPromoEntity {
  final String category;
  final String description;
  final String link;

  BannerPromoEntity({
    required this.category,
    required this.description,
    required this.link,
  });

  @override
  String toString() {
    return 'BannerModel: Category: $category Description: $description Link: $link';
  }
}
