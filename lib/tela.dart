import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/banner_promo.dart';
import 'package:todo_paraguay_sa/cotacao_widget.dart';
import 'package:todo_paraguay_sa/dummy.dart';
import 'package:todo_paraguay_sa/manchetes.dart';
import 'package:todo_paraguay_sa/pesquisa.dart';
import 'package:todo_paraguay_sa/rodape_widget.dart';

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
