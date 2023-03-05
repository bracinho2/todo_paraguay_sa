import 'package:todo_paraguay_sa/app/modules/auth_client/domain/entities/client_entity.dart';

class ClientEntityMapper {
  static Map<String, dynamic> toMap({required ClientEntity client}) {
    return {
      'name': client.name,
    };
  }
}
