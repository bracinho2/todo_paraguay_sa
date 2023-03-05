import 'package:cambona/paddings/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/dummy.dart';

import '../../widgets/announcements_resume_widget.dart';
import '../../widgets/dashboard_client_header.dart';
import '../../widgets/banner_announcements_list_widget.dart';
import '../../widgets/side_menu_widget.dart';
import '../controller/client_dashboard_controller.dart';
import '../state/client_dashboard_states.dart';
import '../stores/client_dashboard_banner_store.dart';

class DesktopDashBoardPage extends StatefulWidget {
  const DesktopDashBoardPage({
    super.key,
    required this.constraints,
    required this.controller,
  });

  final BoxConstraints constraints;
  final ClientDashBoardController controller;

  @override
  State<DesktopDashBoardPage> createState() => _DesktopDashBoardPageState();
}

class _DesktopDashBoardPageState extends State<DesktopDashBoardPage> {
  @override
  void initState() {
    widget.controller.getBanners();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   widget.controller.getBanners();
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<ClientDashboardBannerStore>();
    return ValueListenableBuilder<ClientDashboardState>(
        valueListenable: store,
        builder: (context, state, child) {
          if (state is ClientDashboardStateLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            );
          }

          if (state is ClientDashBoardStateError) {
            return Scaffold(
              body: Center(
                child: Text(state.message),
              ),
            );
          }

          if (state is ClientDashboardStateSucess) {
            return Scaffold(
              body: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SideMenu(),
                  ),
                  Expanded(
                    flex: 5,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const DashboardClientHeader(),
                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    AnnouncementsResumeWidget(
                                      bannerCount: state.banners.length,
                                      bestPriceCount: state.banners.length,
                                      offersCount: state.banners.length,
                                    ),
                                    BannerAnnouncementsListWidget(
                                      banners: state.banners,
                                    ),
                                  ],
                                ),
                              ),
                              // Expanded(
                              //   flex: 2,
                              //   child: Container(
                              //     height: 370,
                              //     decoration: BoxDecoration(
                              //       image: DecorationImage(
                              //         fit: BoxFit.cover,
                              //         image: NetworkImage(images[0]),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return Container(
            color: Colors.amber,
          );
        });
  }
}
