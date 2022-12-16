import 'package:todo_paraguay_sa/app/module/zold/users/domain/entities/user_entity.dart';

class RegisterParams {
  final String name;
  final String lastName;
  final String email;
  final String phone;
  final String password;
  final TeamMemberType memberType;

  RegisterParams(
    this.name,
    this.lastName,
    this.email,
    this.phone,
    this.password,
    this.memberType,
  );
}
