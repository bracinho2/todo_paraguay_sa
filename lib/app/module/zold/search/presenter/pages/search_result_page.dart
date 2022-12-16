import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/widgets/search_widget.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/search_result_entity.dart';

import 'package:todo_paraguay_sa/app/module/zold/search/presenter/controller/search_page_controller.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/pages/widgets/result_widget.dart';

class ResultSearchPage extends StatefulWidget {
  final List<SearchResult> results;
  const ResultSearchPage({
    Key? key,
    required this.results,
  }) : super(key: key);

  @override
  State<ResultSearchPage> createState() => _ResultSearchPageState();
}

final _searchWidget = Modular.get<SearchWidget>();
final controller = Modular.get<SearchPageController>();

class _ResultSearchPageState extends State<ResultSearchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          controller.showInitialPage();
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _searchWidget,
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: widget.results.length,
              (context, index) {
                final result = widget.results[index];
                return ResultWidget(
                  result: result,
                );
              },
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 200,
              crossAxisCount: mediaQueryData.size.width < 600 ? 1 : 4,
              childAspectRatio: .9,
            ),
          ),
        ],
      ),
    );
  }
}
