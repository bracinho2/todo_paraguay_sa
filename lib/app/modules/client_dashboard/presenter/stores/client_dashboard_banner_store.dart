import 'package:flutter/material.dart';

import '../../domain/usecases/get_all_banners_usecase.dart';
import '../state/client_dashboard_states.dart';

class ClientDashboardBannerStore extends ValueNotifier<ClientDashboardState> {
  final GetBannersUsecase _getBanners;

  ClientDashboardBannerStore(this._getBanners)
      : super(ClientDashboardStateLoading());

  Future<void> getBanners() async {
    final result = await _getBanners.call();
    result.fold(
      (error) => value = ClientDashBoardStateError(
        error.message,
      ),
      (sucess) => value = ClientDashboardStateSucess(
        banners: sucess,
      ),
    );
  }
}
