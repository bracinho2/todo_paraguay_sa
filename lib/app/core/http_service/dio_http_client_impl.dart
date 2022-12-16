import 'package:todo_paraguay_sa/app/core/http_service/http_client_errors.dart';
import 'package:todo_paraguay_sa/app/core/http_service/http_service.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';
import 'package:uno/uno.dart';

class DioHttpClientImpl implements HttpClientService {
  @override
  Future<List<Map<String, dynamic>>> fetch({required String path}) async {
    try {
      //final response = await _uno.get(path);

      //final values = List<Map<String, dynamic>>.from(response.data['results']);

      final values = resultMap;

      return values;
    } on UnoError catch (e, stackTrace) {
      if (e.response!.status == 404) {
        throw HttpClientError(message: 'O servidor não foi encontrado!');
      } else if (e.response!.status == 503) {
        throw HttpClientError(message: 'O servidor está fora do ar!');
      }
      throw HttpClientError(
          message: 'O servidor apresentou um problema', stackTrace: stackTrace);
    }
  }
}
