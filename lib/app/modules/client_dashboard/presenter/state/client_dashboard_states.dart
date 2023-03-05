import '../../domain/entities/dashboard_banner_entity.dart';

abstract class ClientDashboardState {
  const ClientDashboardState();
}

class ClientDashBoardStateError implements ClientDashboardState {
  final String message;

  const ClientDashBoardStateError(this.message);
}

class ClientDashboardStateLoading implements ClientDashboardState {}

class ClientDashboardStateSucess implements ClientDashboardState {
  final List<DashBoardBannerEntity> banners;

  ClientDashboardStateSucess({
    required this.banners,
  });
}
