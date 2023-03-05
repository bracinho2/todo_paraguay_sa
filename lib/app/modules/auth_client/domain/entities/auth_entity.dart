import 'package:todo_paraguay_sa/app/core/value_objects/email.dart';
import 'package:todo_paraguay_sa/app/core/value_objects/password.dart';

class Credencials {
  Email _email;
  Password _password;
  Credencials({required String email, required String password})
      : _email = Email(email),
        _password = Password(password);

  Email get email => _email;
  void setEmail(String? value) => _email = Email(value ?? '');

  Password get password => _password;
  void setPassword(String? value) => _password = Password(value ?? '');

  factory Credencials.empty() {
    return Credencials(
      email: '',
      password: '',
    );
  }

  @override
  String toString() {
    return '$runtimeType > Email: $email Senha: $password';
  }
}
