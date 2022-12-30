import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/widgets/search_widget.dart';
import 'package:todo_paraguay_sa/app/module/banner_promo_widget/presenter/widgets/banner_promo_widget.dart';
import 'package:todo_paraguay_sa/app/module/zold/manchetes_widget/presenter/manchetes_widget.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/pages/widgets/cotacao_widget.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/pages/widgets/rodape_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

Widget _searchWidget = Modular.get<SearchWidget>();
Widget _bannerWidged = Modular.get<BannerPromoWidget>();

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              _searchWidget,
              _bannerWidged,
              const CotacaoWidget(),
              ManchetesWidget(images: images),
              ManchetesWidget(images: products),
              const RodapeWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
