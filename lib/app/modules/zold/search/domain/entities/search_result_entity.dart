class SearchResult {
  final String title;
  final String description;
  final String link;

  SearchResult({
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  String toString() {
    return 'Search Result > Title: $title Description: $description Link: $link';
  }
}
