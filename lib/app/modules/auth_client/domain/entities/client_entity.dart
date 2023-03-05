// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_paraguay_sa/app/core/value_objects/name.dart';

import '../../../../core/interfaces/entity.dart';

class ClientEntity extends Entity {
  Name _name;
  ClientEntity({
    super.id,
    required String name,
  }) : _name = Name(name);

  Name get name => _name;
  void setName(String? value) => _name = Name(value ?? '');

  factory ClientEntity.empty() {
    return ClientEntity(
      id: '',
      name: '',
    );
  }

  @override
  String toString() {
    return '$runtimeType > ID: $id > Name: $name';
  }
}
