import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class UsecaseUserErrors extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  UsecaseUserErrors({
    super.message = 'Usecase User Errors',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}
