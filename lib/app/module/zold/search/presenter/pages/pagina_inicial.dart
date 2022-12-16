import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/pages/search_page.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/pages/search_result_page.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/state/search_state_page.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/store/search_results_store.dart';

class InitialPage extends StatefulWidget {
  final SearchResultStore store;
  const InitialPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedBuilder<SearchResultStore, Failure, ISearchState>(
        store: widget.store,
        onLoading: (_) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        onState: (context, state) {
          if (state is InitialSearchState) {
            return const SearchPage();
          }
          if (state is SearchResultState) {
            return ResultSearchPage(
              results: state.results,
            );
          }

          return Container();
        },
      ),
    );
  }
}
