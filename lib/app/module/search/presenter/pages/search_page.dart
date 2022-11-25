import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/banner_promo.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/cotacao_widget.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/manchetes.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/pesquisa.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/rodape_widget.dart';
import 'package:todo_paraguay_sa/dummy.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

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
              const SearchWidget(),
              const CotacaoWidget(),
              const BannerPage(),
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
