import 'package:flutter/material.dart';

import '../../../../core/snackbar_manager/snackbar_manager.dart';
import '../../domain/entities/dashboard_banner_entity.dart';
import '../stores/client_dashboard_banner_store.dart';

class ClientDashBoardController {
  final ClientDashboardBannerStore _bannerStore;

  ClientDashBoardController(this._bannerStore);

  final sendBannerFormKey = GlobalKey<FormState>();

  final banner = DashBoardBannerEntity.empty();

  bool validateForm() {
    if (sendBannerFormKey.currentState!.validate()) {
      SnackBarManager().showSuccess(
        message: 'Dados Validados! =)',
      );
      print(banner);
      return true;
    } else {
      return false;
    }
  }

  void getBanners() {
    _bannerStore.getBanners();
  }
}
