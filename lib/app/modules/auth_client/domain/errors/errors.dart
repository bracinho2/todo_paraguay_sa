import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class ClientError extends Failure {
  ClientError({required String message})
      : super(
          message: message,
        );
}
