import 'package:todo_paraguay_sa/app/core/value_objects/banner_name.dart';
import 'package:todo_paraguay_sa/app/core/value_objects/banner_url.dart';

import '../../../../core/value_objects/banner_published_date.dart';
import '../../../../core/value_objects/exhibition_days.dart';

class DashBoardBannerEntity {
  String _id;
  BannerName _name;
  BannerUrl _url;
  BannerPublishedDate? _published;
  ExhibitionDays _exhibitionDays;
  bool _aproved;

  DashBoardBannerEntity({
    required String id,
    required String bannerName,
    required String bannerUrl,
    required DateTime published,
    required int exhibitionDays,
    required bool aproved,
  })  : _id = id,
        _name = BannerName(bannerName),
        _url = BannerUrl(bannerUrl),
        _published = BannerPublishedDate(published),
        _exhibitionDays = ExhibitionDays(exhibitionDays),
        _aproved = false;

  String? get id => _id;
  void setId(String? id) => _id = id ?? '';

  BannerName get bannerName => _name;
  void setBannerName(String? value) => _name = BannerName(value ?? '');

  BannerUrl get bannerUrl => _url;
  void setBannerUrl(String? value) => _url = BannerUrl(value ?? '');

  BannerPublishedDate get bannerPublishedDate => _published!;
  void setBannerPublishedDate(DateTime? value) =>
      _published = BannerPublishedDate(value ?? DateTime.now());

  ExhibitionDays get exhibitionDays => _exhibitionDays;
  void setExhibitionDays(int? value) =>
      _exhibitionDays = ExhibitionDays(value ?? 1);

  bool get aproved => _aproved;
  void setAproved(bool? value) => _aproved = value ?? false;

  factory DashBoardBannerEntity.empty() {
    return DashBoardBannerEntity(
      id: '',
      bannerName: '',
      bannerUrl: '',
      published: DateTime.now(),
      exhibitionDays: 1,
      aproved: false,
    );
  }

  @override
  String toString() =>
      'DashBoardEntity: id: $id name: $_name url: $_url exhibitionDays: $_exhibitionDays aproved: $_aproved';
}
