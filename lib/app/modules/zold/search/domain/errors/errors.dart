import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class SearchResultError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  SearchResultError({
    super.message = 'Usecase Search Result Error',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}
