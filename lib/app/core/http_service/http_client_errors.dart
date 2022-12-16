import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class HttpClientError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  HttpClientError({
    super.message = 'HttpClient Error',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}

class Error implements Failure {
  @override
  String get message => throw UnimplementedError();
}
