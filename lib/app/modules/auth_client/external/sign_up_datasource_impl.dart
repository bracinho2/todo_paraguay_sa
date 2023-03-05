import 'package:todo_paraguay_sa/app/modules/auth_client/data/datasources/sign_up_datasource.dart';

class SignUpDatasourceImpl implements SignUpDatasource {
  @override
  Future<bool> call({required Map<String, dynamic> client}) async {
    print(client);
    return true;
  }
}
