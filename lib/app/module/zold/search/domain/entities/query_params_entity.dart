class QueryParams {
  final String title;
  final String description;

  QueryParams({
    required this.title,
    required this.description,
  });

  @override
  String toString() {
    return "Params: Title: $title | Description: $description";
  }
}
