import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/domain/usecases/get_all_banners_usecase.dart';
import '../../domain/entities/carroucel_entity.dart';

class BannerPromoStore {
  final GetCarroucel _getAllBannersUsecase;

  BannerPromoStore(this._getAllBannersUsecase);

  final banners = ValueNotifier<List<CarroucelEntity>>([]);

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
