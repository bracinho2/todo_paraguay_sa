import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/pesquisa.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/widgets/result_widget.dart';

class ResultSearchPage extends StatelessWidget {
  ResultSearchPage({super.key});

  final List<SearchResult> results = [
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
    SearchResult(
      'Iphone do Caralho',
      'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      'https://www.youtube.com/watch?v=0q7SugDrMYM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.search,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SearchWidget(),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: results.length,
              (context, index) {
                final result = results[index];
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

class SearchResult {
  final String title;
  final String description;
  final String link;

  SearchResult(
    this.title,
    this.description,
    this.link,
  );
}
