import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class UsecaseError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  UsecaseError({
    super.message = 'Usecase Error',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}
