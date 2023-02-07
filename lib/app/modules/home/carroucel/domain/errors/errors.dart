import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class CarroucelError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  CarroucelError({
    super.message = 'Usecase Search Result Error',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}
