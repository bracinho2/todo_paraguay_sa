import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';
import 'package:todo_paraguay_sa/app/core/theme/app_theme.dart';
import 'package:todo_paraguay_sa/app/modules/zold/app_main_page/presenter/controller/app_main_page_controller.dart';
import 'package:todo_paraguay_sa/app/core/layout/app_adaptative_builder.dart';
import 'package:todo_paraguay_sa/app/modules/zold/app_main_page/presenter/components/side_bar_widget.dart';
import 'package:todo_paraguay_sa/app/modules/zold/app_main_page/presenter/page_states/app_main_page_state.dart';
import 'package:todo_paraguay_sa/app/modules/zold/app_main_page/presenter/pages/desktop_search_page.dart';
import 'package:todo_paraguay_sa/app/modules/zold/app_main_page/presenter/widgets/search_widget.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/desktop_page/footer_widget.dart';
import 'package:todo_paraguay_sa/app/modules/zold/manchetes_widget/presenter/manchetes_widget.dart';
import 'package:todo_paraguay_sa/app/modules/zold/presenter/right_bar_widget.dart';

import '../../../home/carroucel/presenter/widgets/banner_promo_widget.dart';

class AppMainPage extends StatelessWidget {
  const AppMainPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AppMainPageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.appMainPageStore.scaffoldKey,
      drawer: AdaptativeBuilder.isDesktop(context)
          ? null
          : Drawer(
              child: SideBarWidget(
                controller: controller,
              ),
            ),
      body: SafeArea(
        child: AdaptativeBuilder(
          mobileBuilder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  BuildContent(
                    onPressed: () => controller.appMainPageStore.openDrawer(),
                  ),
                  const RightBarWidget(),
                ],
              ),
            );
          },
          tabletBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 10 : 9,
                  child: BuildContent(
                    onPressed: () => controller.appMainPageStore.openDrawer(),
                  ),
                ),
                const Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    child: RightBarWidget(),
                  ),
                ),
              ],
            );
          },
          desktopBuilder: (context, constraints) {
            return ValueListenableBuilder(
              valueListenable: controller.appMainPageStore.mainPageState,
              builder: (context, state, child) {
                if (state is SearchPageState) {
                  return DesktopSearchPage(
                    constraints: constraints,
                    controller: controller,
                  );
                }
                if (state is TravelState) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: constraints.maxWidth > 1350 ? 3 : 4,
                        child: SideBarWidget(
                          controller: controller,
                        ),
                      ),
                      Flexible(
                        flex: constraints.maxWidth > 1350 ? 10 : 9,
                        child: Container(
                          color: secundaryColor,
                          child: const Center(
                            child: Text(
                              'Travel',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          color: thirdColor,
                          child: const Center(
                            child: Text(
                              'SideBar',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }

                return Container();
              },
            );
          },
        ),
      ),
    );
  }
}

class BuildContent extends StatelessWidget {
  BuildContent({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final Function()? onPressed;

  final _searchWidget = Modular.get<SearchWidget>();
  final _bannersWidget = Modular.get<BannerPromoWidget>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _searchWidget,
              if (onPressed != null)
                Padding(
                  padding: const EdgeInsets.only(right: 20.0 / 2),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.menu,
                      size: 35,
                    ),
                  ),
                ),
            ],
          ),
          _bannersWidget,
          ManchetesWidget(images: images),
          ManchetesWidget(images: products),
          const FooterWidget(),
        ],
      ),
    );
  }
}
