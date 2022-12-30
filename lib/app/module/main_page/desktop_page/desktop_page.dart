import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/module/banner_promo_widget/presenter/store/banner_promo_store.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/best_deal_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/categories_list_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/footer_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/important_info_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/main_menu_page.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/our_brand_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/single_announcement_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/single_store_annoucement_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/special_products_list_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/title_session_widget.dart';

import '../../banner_promo_widget/presenter/widgets/banner_promo_widget.dart';

class DeskTopMainPage extends StatelessWidget {
  const DeskTopMainPage({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1280,
          ),
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                MainMenuWidget(),
                BannerPromoWidget(store: Modular.get<BannerPromoStore>()),
                const SizedBox(height: 50),
                const TitleSessionWidget(title: 'Shop Our Top Categories'),
                const CategoriesListWidget(),
                const SizedBox(height: 50),
                const TitleSessionWidget(title: 'Today the best deal for You'),
                const SpecialProductsListWidget(),
                const SingleAnnouncementWidget(),
                const OurBrandWidget(),
                const SizedBox(height: 50),
                const TitleSessionWidget(title: 'Today the best deal for You'),
                const BestDealWidget(),
                const SingleStoreAnnoucementWidget(),
                const ImportantInfoWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(thickness: 2.0),
                ),
                const FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
