import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/banner_promo_widget/domain/entities/banner_promo_entity.dart';
import 'package:todo_paraguay_sa/app/module/banner_promo_widget/domain/usecases/get_all_banners_usecase.dart';

class BannerPromoStore {
  final GetAllBannersUsecase _getAllBannersUsecase;

  BannerPromoStore(this._getAllBannersUsecase);

  final banners = ValueNotifier<List<BannerPromoEntity>>([]);

  void getBanners() async {
    final response = await _getAllBannersUsecase.call();
    response.fold(
      (l) => null,
      (sucess) {
        banners.value = sucess;
      },
    );
  }
}
