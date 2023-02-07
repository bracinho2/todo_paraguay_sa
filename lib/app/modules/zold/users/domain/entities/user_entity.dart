import 'package:todo_paraguay_sa/app/core/value_objects/value_objects_old.dart';
import 'package:todo_paraguay_sa/app/modules/zold/users/domain/entities/notitication_hub_entity.dart';

enum TeamMemberType { admin, user, reader }

abstract class TeamMember {
  final String id;
  final Name name;
  final LastName lastName;
  final Email email;
  final Phone phone;
  final Password password;
  final TeamMemberType memberType;

  NotificationHub? notificationHub;
  String? lastNotification;

  TeamMember({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.password,
    required this.memberType,
  });

  void receive(String from, String message) {
    lastNotification = '$from: "$message"';
  }

  void send(String message) {
    notificationHub?.send(this, message);
  }

  void sendTo<T extends TeamMember>(String message) {
    notificationHub?.sendTo<T>(this, message);
  }
}

class Admin extends TeamMember {
  Admin({
    required super.id,
    required super.name,
    required super.lastName,
    required super.email,
    required super.phone,
    required super.password,
    required super.memberType,
  });

  @override
  String toString() {
    return "$name (Admin)";
  }
}

class User extends TeamMember {
  User({
    required super.id,
    required super.name,
    required super.lastName,
    required super.email,
    required super.phone,
    required super.password,
    required super.memberType,
  });

  @override
  String toString() {
    return "$name (User)";
  }
}
