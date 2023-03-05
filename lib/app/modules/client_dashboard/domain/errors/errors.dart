import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class DashboardGetCarroucelError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  DashboardGetCarroucelError({
    super.message = 'DashboardGetCarroucelError',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}

class DashBoardGetBannersHttpError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  DashBoardGetBannersHttpError({
    super.message = 'DashBoardGetBannersHttpError',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}
