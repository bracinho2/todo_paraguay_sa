import 'package:todo_paraguay_sa/app/core/dummy.dart';

import '../infra/datasource/get_all_banners_datasource.dart';

class GetAllBannersDatasourceImpl implements GetBannersDatasource {
  @override
  Future<List<Map<String, dynamic>>> call() async {
    return dashboardBanner;
  }
}
